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
package org.crown.projects.pay.model.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import org.crown.framework.model.BaseModel;

import java.math.BigDecimal;
import java.time.LocalDateTime;


/**
 * <p>
 * 交易记录表
 * </p>
 *
 * @author ykMa
 */
@TableName("pay_record")
@Data
@NoArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class PayRecord extends BaseModel {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(notes = "用户openId")
    private String openId;
    @ApiModelProperty(notes = "消费类型：1消费，2返现")
    private Integer type;
    @ApiModelProperty(notes = "支付类型：0微信支付，1佣金支付")
    private Integer pay;
    @ApiModelProperty(notes = "交易金额")
    private BigDecimal sum;
    @ApiModelProperty(notes = "佣金余额")
    private BigDecimal bonus;
    @ApiModelProperty(notes = "交易时间")
    private LocalDateTime createTime;

}
