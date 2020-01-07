package org.crown.projects.pay.service;

import org.crown.projects.classify.model.entity.Order;

public interface IPayService {
    /**
     * 余额支付
     * @param openId
     * @param order
     * @return
     */
    Boolean bonusPay(String openId, Order order);

    /**
     * 微信支付完成回调接口
     */
    void afterPay(Order order);

}
