package org.crown.enums;

/**
 * @author whzhang
 */
public enum RecommendStatusEnum {
    SUCCESS(200, "可以领取"),

    SHARE_SELF_ERROR(201, "领取人不可为自己，请分享给他人领取"),

    NO_STOCK(201, "无库存"),

    PARENT_ERROR(201, "您只能领取上级用户的分享"),

    ACTIVE_EXIST(201, "您已领取过该商品，请勿重复领取"),

    NO_MEMBER(201, "该单领取名额已达上限"),

    SHARE_ERROR(201, "您已是此用户的上级用户,不可参与该分享")
    ;

    private Integer value;
    private String msg;

    RecommendStatusEnum(Integer value, String msg) {
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


