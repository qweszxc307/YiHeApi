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

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import org.crown.framework.model.convert.Convert;


/**
 * <p>
 * 省，市，区，联动表
 * </p>
 *
 * @author ykMa
 */
@TableName("city")
@Data
@NoArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class City  extends Convert {

    private static final long serialVersionUID = 1L;
    @ApiModelProperty(notes = "city_id")
    private Integer id;
    @ApiModelProperty(notes = "当前地名的编码")
    private String areaCode;
    @ApiModelProperty(notes = "地名")
    private String areaName;
    @ApiModelProperty(notes = "上级地名的编码")
    private String parentCode;
    @ApiModelProperty(notes = "区域id")
    private Integer aid;
}
