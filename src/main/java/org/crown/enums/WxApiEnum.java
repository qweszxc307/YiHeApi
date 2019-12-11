package org.crown.enums;

/**
 * @author whzhang
 */
public enum WxApiEnum {
    WX_ORDER_API("https://api.mch.weixin.qq.com/pay/unifiedorder", "微信支付统一下单API"),

    WX_RECOMMEND_BACK_API("http://iozwh.55555.io/wxServices/wxRecommendBack", "分享返礼微信支付统一下单成功回调接口"),

    WX_PAY_BACK_API("http://iozwh.55555.io/wxServices/wxNotify", "微信支付统一下单成功回调接口");

    private String value;
    private String msg;

    WxApiEnum(String value, String msg) {
        this.value = value;
        this.msg = msg;
    }

    public String value() {
        return this.value;
    }

    public String msg() {
        return msg;
    }
}


