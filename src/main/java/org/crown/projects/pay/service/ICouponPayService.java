package org.crown.projects.pay.service;

import org.crown.projects.pay.model.entity.CustomerCoupon;

import java.util.Map;

public interface ICouponPayService {
    /**
     * 优惠券接口回调方法
     * @param map
     */
    void callBack(Map map);


    /**
     * 优惠券接口先执行的方法
     *
     * @param openId 用户 openId
     * @return 执行成功失败
     */
    Boolean callAfter(String openId, CustomerCoupon customerCoupon);

}
