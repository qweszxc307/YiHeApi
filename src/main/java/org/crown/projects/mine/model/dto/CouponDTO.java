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
package org.crown.projects.mine.model.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import org.crown.framework.model.BaseModel;

import javax.validation.constraints.NotNull;
import java.math.BigDecimal;
import java.time.LocalDateTime;


/**
 * <p>
 *
 * </p>
 *
 * @author ykMa
 */
@Data
@NoArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class CouponDTO extends BaseModel {
    private static final long serialVersionUID = 1L;

    @ApiModelProperty(notes = "优惠券描述")
    @NotNull
    private String details;
    @ApiModelProperty(notes = "优惠卷名称")
    @NotNull
    private String name;
    @ApiModelProperty(notes = "类型{1：满减，2：直减，3折扣}")
    @NotNull
    private Integer type;
    @ApiModelProperty(notes = "折扣条件")
    @NotNull
    private BigDecimal discount;
    @ApiModelProperty(notes = "优惠价格")
    @NotNull
    private BigDecimal discountPoint;
    @ApiModelProperty(notes = "开始时间")
    @NotNull
    private LocalDateTime startTime;
    @ApiModelProperty(notes = "结束时间")
    @NotNull
    private LocalDateTime endTime;
    @ApiModelProperty(notes = "品牌id")
    @NotNull
    private Integer brandId;


}
