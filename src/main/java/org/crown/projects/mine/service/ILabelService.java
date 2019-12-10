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
package org.crown.projects.mine.service;

import org.crown.framework.service.BaseService;
import org.crown.projects.mine.model.dto.LabelDTO;
import org.crown.projects.mine.model.entity.Label;

import java.util.List;

/**
 * <p>
 * 标签表 服务类
 * </p>
 *
 * @author ykMa
 */
public interface ILabelService extends BaseService<Label> {
    /**
     * 查询当前当前用户喜欢的标签
     * @param openId   微信id
     * @param brandId 标签类型的id
     * @return
     */
    List<LabelDTO> queryLabelByOpenId(String openId, Integer brandId);

    /**
     * 修改客户的标签
     *
     * @param brandId
     * @param labelDTOS
     * @param openId
     */
    void updateLabel(Integer brandId, Integer customerId, List<LabelDTO> labelDTOS, String openId);
}
