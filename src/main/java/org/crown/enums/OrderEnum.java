package org.crown.enums;

/**
 * @author ykMa
 */
public enum OrderEnum {
    CLOSE_TIME(30L, "支付关闭时间");

    private Long value;
    private String msg;

    OrderEnum(Long value, String msg) {
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


