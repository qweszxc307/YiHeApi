package org.crown.enums;

/**
 * 优惠券类型
 * @author ykMa
 */
public enum CouponTypeEnum {

    FULL_REDUCTION(1, "满减"),
    DIRECT_REDUCTION(2, "直减"),
    DISCOUNT(3, "折扣");

    private Integer value;
    private String msg;

    CouponTypeEnum(Integer value, String msg) {
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

