package org.crown.enums;

public enum CustomerCouponEnum {
    PAID(1, "已支付"),

    UNPAID(0, "未支付");

    private Integer value;
    private String msg;

    CustomerCouponEnum(Integer value, String msg) {
        this.value = value;
        this.msg = msg;
    }

    public Integer value() {
        return this.value;
    }

    public String msg() {
        return msg;
    }
}
