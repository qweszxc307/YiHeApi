/*
 * Copyright (c) 2018-2022 Caratacus, (caratacus@qq.com).
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of
 * this software and associated documentation files (the "Software"), to deal in
 * the Software without restriction, including without limitation the rights to
 * use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
 * the Software, and to permit persons to whom the Software is furnished to do so,
 * subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
 * FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
 * COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
 * IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */
package org.crown.projects.classify.model.dto;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import org.crown.framework.model.BaseModel;

import java.math.BigDecimal;
import java.time.LocalDateTime;


/**
 * <p>
 * 订单
 * </p>
 *
 * @author ykMa
 */
@ApiModel
@Data
@NoArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class OrderDTO extends BaseModel {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(notes = "订单号")
    private String orderNum;
    @ApiModelProperty(notes = "订单类型：0普通订单，1分享返礼订单")
    private Integer orderType;
    @ApiModelProperty(notes = "总金额")
    private BigDecimal totalFee;
    @ApiModelProperty(notes = "实付金额")
    private BigDecimal actualFee;
    @ApiModelProperty(notes = "邮费")
    private BigDecimal postFee;
    @ApiModelProperty(notes = "商品id")
    private Integer productId;
    @ApiModelProperty(notes = "购买数量")
    private Integer num;
    @ApiModelProperty(notes = "商品标题")
    private String title;
    @ApiModelProperty(notes = "商品单价")
    private BigDecimal price;
    @ApiModelProperty(notes = "折扣后的价格")
    private BigDecimal discountPrice;
    @ApiModelProperty(notes = "商品图片")
    private String image;
    @ApiModelProperty(notes = "订单状态：（ 1：未付款， 2：已付款，未发货， 3：已发货，未收货 4：已收货，未确认 5：确认收货，未评价 6：已评价）")
    private Integer status;
    @ApiModelProperty(notes = "下单时间")
    private LocalDateTime createTime;
}
