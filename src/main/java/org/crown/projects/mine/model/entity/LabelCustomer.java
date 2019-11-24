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
package org.crown.projects.mine.model.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import org.crown.framework.model.BaseModel;

import java.time.LocalDateTime;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;


/**
 * <p>
 *
 * </p>
 *
 * @author ykMa
 */
@TableName("label_customer")
@Data
@NoArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class LabelCustomer extends BaseModel {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(notes = "会员id")
    private Integer customerId;
    @ApiModelProperty(notes = "标签id")
    private Integer labelId;
    @ApiModelProperty(notes = "标签类型id")
    private Integer labelBrandId;
    @ApiModelProperty(notes = "更新时间")
    private LocalDateTime updateTime;
    @ApiModelProperty(notes = "创建时间")
    private LocalDateTime createTime;

}
