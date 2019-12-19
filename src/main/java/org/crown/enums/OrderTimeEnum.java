package org.crown.enums;

/**
 * @author ykMa
 */
public enum OrderTimeEnum {
    CLOSE_TIME(30L, "支付关闭时间");

    private Long value;
    private String msg;

    OrderTimeEnum(Long value, String msg) {
        this.value = value;
        this.msg = msg;
    }

    public Long value() {
        return this.value;
    }

    public String msg() {
        return msg;
    }
}


