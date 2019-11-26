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
import io.swagger.annotations.ApiOperation;
import org.crown.common.annotations.Resources;
import org.crown.common.utils.JWTUtils;
import org.crown.enums.AuthTypeEnum;
import org.crown.framework.controller.SuperController;
import org.crown.framework.responses.ApiResponses;
import org.crown.projects.classify.model.dto.OrderDTO;
import org.crown.projects.classify.service.IOrderService;
import org.crown.projects.mine.model.entity.Customer;
import org.crown.projects.mine.model.parm.OrderPARM;
import org.crown.projects.mine.service.ICustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;

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

        return success(order);
    }

}
