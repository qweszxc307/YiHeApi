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
package org.crown.projects.classify.service;

import org.crown.framework.responses.ApiResponses;
import org.crown.framework.service.BaseService;
import org.crown.projects.classify.model.dto.OrderDTO;
import org.crown.projects.classify.model.entity.Order;
import org.crown.projects.mine.model.entity.Customer;
import org.crown.projects.mine.model.parm.OrderPARM;

import javax.servlet.http.HttpServletResponse;
import java.math.BigDecimal;

/**
 * <p>
 * 订单主表 服务类
 * </p>
 *
 * @author ykMa
 */
public interface IOrderService extends BaseService<Order> {
    /**
     * 查邮费
     * @param num  购买的商品数量
     * @param addId    收货地址id
     * @param productId   产品id
     * @param prices    商品的总价d1格
     * @return 邮费
     */
    BigDecimal queryPostFee(Integer num, Integer addId, Integer productId, BigDecimal prices);

    /**
     * 下单
     * @param customer 客户信息
     * @param orderPARM 订单信息
     * @return 订单
     */
    ApiResponses<OrderDTO> createOrder(HttpServletResponse response, Customer customer, OrderPARM orderPARM);
    /**
     * 取消订单
     * @param orderId 订单id
     * @param openId  客户信息
     */

    void deleteOrder(Integer orderId, String openId);

    /**
     * 根据订单号查询订单
     * @param orderNum
     * @return
     */
    Order getByOrderNum(String orderNum);

}
