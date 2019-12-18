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
package org.crown.projects.classify.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.crown.common.annotations.Resources;
import org.crown.common.utils.JWTUtils;
import org.crown.enums.AuthTypeEnum;
import org.crown.enums.OrderStatusEnum;
import org.crown.framework.controller.SuperController;
import org.crown.framework.responses.ApiResponses;
import org.crown.projects.classify.model.dto.OrderDTO;
import org.crown.projects.classify.model.entity.Order;
import org.crown.projects.classify.service.IOrderService;
import org.crown.projects.main.model.entity.RecommendOrder;
import org.crown.projects.main.service.IRecommendOrderService;
import org.crown.projects.mine.model.entity.Customer;
import org.crown.projects.mine.model.parm.OrderPARM;
import org.crown.projects.mine.service.ICustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 * 订单主表 前端控制器
 * </p>
 *
 * @author ykMa
 */
@Api(tags = {"Order"}, description = "订单主表相关接口")
@RestController
@RequestMapping(value = "/wxServices", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
@Validated
public class OrderRestController extends SuperController {
    @Autowired
    private IOrderService orderService;
    @Autowired
    private ICustomerService customerService;
    @Autowired
    private IRecommendOrderService recommendOrderService;

    @Resources(auth = AuthTypeEnum.AUTH)
    @ApiOperation("查询运费")
    @GetMapping(value = "/postFee")

    /**
     * 购买数量，地址id，产品id，商品总价格
     */
    public ApiResponses<BigDecimal> get(@RequestParam Integer num,
                                        @RequestParam Integer addId,
                                        @RequestParam Integer productId,
                                        @RequestParam BigDecimal prices) {
        BigDecimal postFee = orderService.queryPostFee(num, addId, productId, prices);
        return success(postFee);
    }

    @Resources(auth = AuthTypeEnum.AUTH)
    @ApiOperation("下单接口")
    @PostMapping(value = "/order")

    /**
     * 邮费，商品信息，收货地址对象 订单价格，
     */
    public ApiResponses<OrderDTO> createOrder(@RequestBody OrderPARM orderPARM) {
        String openId = JWTUtils.getOpenId(getToken());
        Customer customer = customerService.query().eq(Customer::getOpenId, openId).entity(e -> e);
        OrderDTO order = orderService.createOrder(customer, orderPARM);
        if (null == order) {
            return success(HttpStatus.GATEWAY_TIMEOUT, null);
        }
        return success(order);
    }

    @Resources(auth = AuthTypeEnum.AUTH)
    @ApiOperation("查询我的订单")
    @GetMapping(value = "/order")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "status", value = "订单状态", required = true, paramType = "path")
    })
    public ApiResponses<List<OrderDTO>> getOrder(@RequestParam(required = true) Integer status) {
        try {
            String openId = JWTUtils.getOpenId(getToken());
            Customer customer = customerService.query().eq(Customer::getOpenId, openId).entity(e -> e);
            List<OrderDTO> orders = new ArrayList<>();
            List<OrderDTO> entitys = orderService.query()
                    .eq(status != 0, Order::getStatus, status)
                    .eq(Order::getCustomerId, customer.getId())
                    .gt(status.equals(OrderStatusEnum.INIT.value()), Order::getCloseTime, LocalDateTime.now())
                    .orderByDesc(Order::getCreateTime)
                    .entitys(e -> {
                        OrderDTO orderDTO = e.convert(OrderDTO.class);
                        if(orderDTO.getOrderType().equals(OrderStatusEnum.RECOMMEND_ORDER.value())){
                            /*推荐返礼产品订单-添加推荐返礼关联关系*/
                            RecommendOrder recommendOrder = recommendOrderService.query().eq(RecommendOrder::getOrderId,orderDTO.getId()).entity(f->f);
                            orderDTO.setRecommendId(recommendOrder.getRecommendId());
                        }
                        return orderDTO;
                    });
            if (entitys.size() > 0) {
                entitys.forEach(e->{
                    if (e.getStatus().equals(OrderStatusEnum.INIT.value()) && e.getCloseTime().isAfter(LocalDateTime.now())) {
                        orders.add(e);
                    }
                    if (!e.getStatus().equals(OrderStatusEnum.INIT.value())) {
                        orders.add(e);
                    }
                });
            }
            return success(orders);
        } catch (Exception e) {
            return success(HttpStatus.REQUEST_TIMEOUT, null);
        }
    }



    @Resources(auth = AuthTypeEnum.AUTH)
    @ApiOperation("取消订单")
    @DeleteMapping(value = "/order/{id}")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "id", value = "订单id", required = true, paramType = "path")
    })
    public ApiResponses<Void> deleteOrder(@PathVariable("id") Integer id) {
        orderService.deleteOrder(id, JWTUtils.getOpenId(getToken()));
        return success();
    }

}
