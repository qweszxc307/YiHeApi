package org.crown.enums;

/**
 * @author ykMa
 */
public enum OrderStatusEnum {
    /*订单支付状态*/
    INIT(1, "初始化，未付款"),
    PAY_UP(2, "已付款，未发货"),
    DELIVERED(3, "已发货，未收货"),
    RECEIVED(4,"已收货，未确认"),
    CONFIRMED(5, "已确认,未评价"),
    RATED(6, "已评价，交易结束"),
    /*订单类型*/
    COMMON_ORDER(0, "正常订单"),
    RECOMMEND_ORDER(1, "推荐产品订单"),
    RECOMMEND_SEND_ORDER(2, "推荐产品-赠礼订单")
    ;

    private Integer value;
    private String msg;

    OrderStatusEnum(Integer value, String msg) {
        this.value = value;
        this.msg = msg;
    }

    public Integer value(){
        return this.value;
    }

    public String msg(){
        return msg;
    }
}
