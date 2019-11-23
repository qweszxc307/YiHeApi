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
package org.crown.projects.account.model.entity;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
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
 * 客户表
 * </p>
 *
 * @author ykMa
 */
@TableName("customer")
@Data
@NoArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class Customer extends BaseModel {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(notes = "id")
    private Integer id;
    @ApiModelProperty(notes = "open_id")
    private String openId;
    @ApiModelProperty(notes = "union_id")
    private String unionId;
    @ApiModelProperty(notes = "会员号")
    private String memberNum;
    @ApiModelProperty(notes = "等级表id")
    private Integer mId;
    @ApiModelProperty(notes = "佣金余额")
    private Double bonus;
    @ApiModelProperty(notes = "成交订单数")
    private Integer orderNum;
    @ApiModelProperty(notes = "成交总金额")
    private BigDecimal sum;
    @ApiModelProperty(notes = "微信名称")
    private String nickName;
    @ApiModelProperty(notes = "真实姓名")
    private String name;
    @ApiModelProperty(notes = "手机号")
    private String phone;
    @ApiModelProperty(notes = "性别")
    private Integer sex;
    @ApiModelProperty(notes = "地址")
    private String address;
    @ApiModelProperty(notes = "最后一次交易时间")
    private LocalDateTime lastTime;
    /*
     * 创建时间
     */
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;
    /**
     * 修改时间
     */
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateTime;

}
