/*
 * Copyright (c) 2018-2022 Caratacus, (caratacus@qq.com).
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of
 * this software and associated documentation files (the "Software"), to deal in
 * the Software without restriction, including without limitation the rights to
 * use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
 * the Software, and to permit persons to whom the Software is furnished to do so,
 * subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
 * FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
 * COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
 * IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */
package org.crown.projects.classify.service.impl;

import lombok.extern.slf4j.Slf4j;
import org.crown.common.enums.OrderEnum;
import org.crown.common.utils.CustomerUtils;
import org.crown.enums.OrderStatusEnum;
import org.crown.framework.service.impl.BaseServiceImpl;
import org.crown.projects.classify.mapper.OrderMapper;
import org.crown.projects.classify.model.dto.OrderDTO;
import org.crown.projects.classify.model.dto.ProductDTO;
import org.crown.projects.classify.model.entity.Order;
import org.crown.projects.classify.model.entity.OrderLogistics;
import org.crown.projects.classify.model.entity.PostFee;
import org.crown.projects.classify.model.entity.ProductPrice;
import org.crown.projects.classify.service.IOrderLogisticsService;
import org.crown.projects.classify.service.IOrderService;
import org.crown.projects.classify.service.IProductPriceService;
import org.crown.projects.mine.model.dto.AcceptAddressDTO;
import org.crown.projects.mine.model.entity.Coupon;
import org.crown.projects.mine.model.entity.CouponCustomer;
import org.crown.projects.mine.model.entity.Customer;
import org.crown.projects.mine.model.parm.OrderPARM;
import org.crown.projects.mine.service.IAcceptAddressService;
import org.crown.projects.mine.service.ICouponCustomerService;
import org.crown.projects.mine.service.ICouponService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Objects;

/**
 * <p>
 * 订单主表 服务实现类
 * </p>
 *
 * @author ykMa
 */
@Slf4j
@Service
public class OrderServiceImpl extends BaseServiceImpl<OrderMapper, Order> implements IOrderService {
    @Autowired
    private IAcceptAddressService acceptAddressService;
    @Autowired
    private IOrderLogisticsService orderLogisticsService;
    @Autowired
    private ICouponService couponService;
    @Autowired
    private ICouponCustomerService couponCustomerService;
    @Autowired
    private IProductPriceService productPriceService;

    /**
     * @param num       购买的商品数量
     * @param addId     收货地址id
     * @param productId 产品id
     * @param prices    商品的总价格
     * @return 邮费
     */
    @Override
    public BigDecimal queryPostFee(Integer num, Integer addId, Integer productId, BigDecimal prices) {
        String province = acceptAddressService.getById(addId).getProvince();
        Integer cityId = baseMapper.queryCityIdByAreaName(province);
        List<PostFee> postFee = baseMapper.queryPostFee(cityId, productId);
        if (postFee.size() == 0) {
            return null;
        }
        for (PostFee fee : postFee) {
            BigDecimal freePrice = baseMapper.queryConfigById(fee.getConfigId());
            if (prices.compareTo(freePrice) == 1) {
                return new BigDecimal("0");
            }
            if (num >= fee.getSNum() && num <= fee.getENum()) {
                return fee.getPrice();
            }
        }
        return null;
    }

    /**
     * @param customer  客户信息
     * @param orderPARM 订单信息
     * @return 订单
     */


    @Transactional(readOnly = false)
    @Override
    public OrderDTO createOrder(Customer customer, OrderPARM orderPARM) {
        AcceptAddressDTO address = orderPARM.getAddress();
        BigDecimal postFee = orderPARM.getPostFee();
        BigDecimal price = orderPARM.getPrice();
        Integer couponId = orderPARM.getCouponId();
        ProductDTO product = orderPARM.getProduct();
        BigDecimal postFee1 = queryPostFee(product.getNum(), address.getId(), product.getId(), price);
        if (postFee.compareTo(postFee1) != 0) {
            log.error("邮费不正确：【传入邮费：" + postFee + ",运算出的邮费：" + postFee1 + " 】");
            return null;
        }
        ProductPrice productPrice = productPriceService.query().eq(ProductPrice::getPid, product.getId()).ge(ProductPrice::getENum, product.getNum()).le(ProductPrice::getSNum, product.getNum()).entity(e -> e);
        if (productPrice.getPrice().compareTo(product.getPrice()) != 0) {
            log.error("商品价格不正确:【传入价格：" + product.getPrice() + ",运算出的价格：" + productPrice.getPrice() + " 】");
            return null;
        }
        BigDecimal add = productPrice.getPrice().multiply(new BigDecimal(product.getNum() + "")).add(postFee1);
        //创建订单
        Order order = new Order();
        //设置优惠券id
        if (Objects.nonNull(couponId)) {
            Coupon coupon = couponService.getById(couponId);
            if (coupon.getType() != 3) {
                add = add.subtract(coupon.getDiscount());
            }else {
                add = add.multiply(coupon.getDiscount());
            }
            //设置订单优惠券
            if (price.compareTo(add) != 0) {
                log.error("商品的总价格不正确：【传入价格：" + price + "，运算出的价格：" + add + " 】");
                return null;
            }
            order.setCouponId(couponId);
            List<CouponCustomer> list = couponCustomerService.query().eq(CouponCustomer::getCouponId, couponId).eq(CouponCustomer::getOpenId, customer.getOpenId()).list();
            for (int i = 0; i < 1; i++) {
                //优惠券数量减少
                couponService.deleteCouponCustomerById(list.get(i).getId());
            }
            coupon.setUsed(coupon.getUsed() + 1);
            couponService.updateById(coupon);
        }
        if (price.compareTo(add) != 0) {
            log.error("商品的总价格不正确：【传入价格：" + price + "，运算出的价格：" + add + " 】");
            return null;
        }
        //购买数量
        order.setNum(product.getNum());
        //设置订单类型
        order.setOrderType(orderPARM.getOrderType());
        //设置应付价格
        order.setTotalFee(price);
        //商品的单价
        order.setPrice(product.getPrice());
        //设置商品名称
        order.setTitle(product.getName());
        //设置订单状态
        order.setStatus(OrderStatusEnum.INIT.value());
        //设置商品id
        order.setProductId(product.getId());
        //设置用户id
        order.setCustomerId(customer.getId());
        //设置下单时间
        order.setCreateTime(LocalDateTime.now());
        //设置订单号
        order.setOrderNum(CustomerUtils.getOrderNum());
        //订单图片
        order.setImage(product.getImgUrl());
        //设置交易关闭时间
        order.setCloseTime(LocalDateTime.now().plusMinutes(OrderEnum.CLOSE_TIME.value()));
        //设置邮费
        order.setPostFee(postFee);

        //保存订单
        save(order);
        //设置订单快递信息
        OrderLogistics orderLogistics = new OrderLogistics();
        //设置订单号id
        orderLogistics.setOrderId(order.getId());
        //设置收件人，手机号码，地址
        orderLogistics.setAddressee(address.getName());
        orderLogistics.setPhone(address.getPhone());
        orderLogistics.setProvince(address.getProvince());
        orderLogistics.setCity(address.getCity());
        orderLogistics.setDistrict(address.getDistrict());
        orderLogistics.setStreet(address.getStreet());
        //保存订单地址信息
        orderLogisticsService.save(orderLogistics);
        return order.convert(OrderDTO.class);
    }

    /**
     * 取消订单
     *
     * @param orderId 订单id
     * @param openId  客户信息
     */
    @Transactional(readOnly = false)
    @Override
    public void deleteOrder(Integer orderId, String openId) {
        Order order = getById(orderId);
        if (Objects.nonNull(order.getCouponId())) {
            CouponCustomer couponCustomer = new CouponCustomer();
            couponCustomer.setCouponId(order.getCouponId());
            couponCustomer.setOpenId(openId);
            couponCustomerService.save(couponCustomer);
            Coupon coupon = couponService.getById(order.getCouponId());
            coupon.setUsed(coupon.getUsed() - 1);
            couponService.updateById(coupon);
        }
        OrderLogistics entity = orderLogisticsService.query().eq(OrderLogistics::getOrderId, orderId).entity(e -> e);
        orderLogisticsService.removeById(entity);
        removeById(orderId);
    }
}


