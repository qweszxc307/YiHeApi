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

import org.crown.common.utils.CustomerUtils;
import org.crown.framework.service.impl.BaseServiceImpl;
import org.crown.projects.classify.mapper.OrderMapper;
import org.crown.projects.classify.model.dto.OrderDTO;
import org.crown.projects.classify.model.dto.ProductDTO;
import org.crown.projects.classify.model.entity.Order;
import org.crown.projects.classify.model.entity.OrderLogistics;
import org.crown.projects.classify.model.entity.PostFee;
import org.crown.projects.classify.service.IOrderLogisticsService;
import org.crown.projects.classify.service.IOrderService;
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
import java.util.List;
import java.util.Objects;

/**
 * <p>
 * 订单主表 服务实现类
 * </p>
 *
 * @author ykMa
 */
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


    @Override
    public BigDecimal queryPostFee(Integer num, Integer addId, Integer productId, BigDecimal prices) {
        //查询地址id的省份
        String province = acceptAddressService.getById(addId).getProvince();
        //按照省的id
        Integer cityId = baseMapper.queryCityIdByAreaName(province);
        List<PostFee> postFee = baseMapper.queryPostFee(cityId, productId);
        if (postFee.size() == 0) {
            return new BigDecimal("60");
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

        return new BigDecimal("100");
    }


    @Transactional(readOnly = false)
    @Override
    public OrderDTO createOrder(Customer customer, OrderPARM orderPARM) {
        AcceptAddressDTO address = orderPARM.getAddress();
        BigDecimal postFee = orderPARM.getPostFee();
        BigDecimal price = orderPARM.getPrice();
        Integer couponId = orderPARM.getCouponId();
        ProductDTO product = orderPARM.getProduct();
        //创建订单
        Order order = new Order();
        //购买数量
        order.setNum(product.getNum());
        //生成订单号
        order.setOrderNum(CustomerUtils.getOrderNum());
        //设置应付价格
        order.setTotalFee(product.getPrice().multiply(new BigDecimal(product.getNum() + "")).add(postFee));
        //商品的单价
        order.setPrice(product.getPrice());
        //设置商品名称
        order.setTitle(product.getName());
        //设置订单状态
        order.setStatus(1);
        //设置商品id
        order.setProductId(product.getId());
        //设置用户id
        order.setCustomerId(customer.getId());
        //设置订单号
        order.setOrderNum(CustomerUtils.getOrderNum());
        //设置实际支付金额
        order.setActualFee(price);
        //设置优惠价
        order.setDiscountPrice(price);
        //订单图片
        order.setImage(product.getImgUrl());
        //设置支付类型
        order.setPaymentType(1);
        //设置邮费
        order.setPostFee(postFee);
        //设置折扣价
        if (Objects.nonNull(couponId)) {
            Coupon coupon = couponService.getById(couponId);
            //设置订单优惠券
            order.setCouponId(couponId);
            //使用了优惠券
            if (coupon.getType() == 3) {
                order.setDiscountPrice(product.getPrice().multiply(new BigDecimal(product.getNum() + "")).multiply(coupon.getDiscountPoint()));
            } else {
                order.setDiscountPrice((product.getPrice().multiply(new BigDecimal(product.getNum() + ""))).subtract(coupon.getDiscountPoint()));
            }
            //优惠券数量减少
            couponService.deleteCouponCustomerById(coupon.getId());
        }
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
        }
        removeById(orderId);
    }
}


