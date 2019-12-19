package org.crown.enums;

import lombok.Getter;

@Getter
public enum ExceptionEnum {
    PRICE_CAN_NOT_NULL(400, "价格不能为空"),
    INVALID_FILE_TYPE(400, "无效的文件类型！"),
    INVALID_PARAM_ERROR(400, "无效的请求参数！"),
    INCORRECT_POSTAGE(404, "邮费不正确！"),
    BRAND_NOT_FOUND(404, "品牌不存在！"),
    SPEC_NOT_FOUND(404, "规格不存在！"),
    GOODS_NOT_FOUND(404, "商品不存在！"),
    ORDER_NOT_FOUND(404, "订单不存在！"),
    ORDER_DETAIL_NOT_FOUND(404, "订单数据不存在！"),
    DATA_TRANSFER_ERROR(500, "数据转换异常！"),
    INVALID_ORDER_STATUS(500, "订单状态不正确！"),
    STOCK_NOT_ENOUGH_ERROR(500, "商品库存不足！")
    ;




    private Integer status;
    private String message;

    ExceptionEnum(Integer status, String message) {
        this.status = status;
        this.message = message;
    }

    public Integer status(){
        return this.status;
    }

    public String message(){
        return message;
    }
}
