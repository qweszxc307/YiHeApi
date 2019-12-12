package org.crown.enums;

/**
 * @author whzhang
 */
public enum WxApiEnum {
    WX_ORDER_API("https://api.mch.weixin.qq.com/pay/unifiedorder", "微信支付统一下单API"),

    WX_RECOMMEND_BACK_API("http://176634j0u3.iok.la/wxServices/wxRecommendBack", "分享返礼微信支付统一下单成功回调接口"),

    WX_PAY_BACK_API("http://176634j0u3.iok.la/wxServices/wxNotify", "微信支付统一下单成功回调接口"),

    WX_PAY_COUPON_BACK_API("http://176634j0u3.iok.la/wxServices/wxCouponNotify", "一元三张优惠券支付统一下单成功回调接口");

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


