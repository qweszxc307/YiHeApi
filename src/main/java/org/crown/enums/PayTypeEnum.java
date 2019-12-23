package org.crown.enums;

/**
 * @author ykMa
 */
public enum PayTypeEnum {

    WX(0, "微信支付"),
    YE(1, "余额支付"),
    POSITIVE(1, "正数"),
    NEGATIVE(-1, "负数"),


    CASH_BACK(2, "返现"),
    CONSUME(1, "消费");


    private Integer value;
    private String msg;

    PayTypeEnum(Integer value, String msg) {
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

