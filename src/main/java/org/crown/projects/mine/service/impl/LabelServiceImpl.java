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
package org.crown.projects.mine.service.impl;


import lombok.extern.slf4j.Slf4j;
import org.crown.projects.mine.mapper.LabelMapper;
import org.crown.projects.mine.model.dto.LabelDTO;
import org.crown.projects.mine.model.entity.Label;

import org.crown.framework.service.impl.BaseServiceImpl;
import org.crown.projects.mine.service.ILabelService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 * 标签表 服务实现类
 * </p>
 *
 * @author ykMa
 */
@Service
@Slf4j
public class LabelServiceImpl extends BaseServiceImpl<LabelMapper, Label> implements ILabelService {
        @Override
        public List<LabelDTO> queryLabelByOpenId(String openId, Integer brandId) {
                try {
                        List<LabelDTO> labelDTOS = new ArrayList<>();
                        List<Integer> list = baseMapper.queryLabelIdByOpenId(openId, brandId);
                        for (Integer integer : list) {
                                labelDTOS.add(getById(integer).convert(LabelDTO.class));
                        }
                        return labelDTOS;
                } catch (Exception e) {
                        log.error("查询标签出现异常，原因是：" + e.getMessage());
                        return null;
                }
        }

        @Transactional
        @Override
        public void updateLabel(Integer brandId, List<LabelDTO> labelDTOS, String openId) {
                try {
                        baseMapper.deleteLabelByBrandIdAndOpenId(brandId, openId);
                        if (labelDTOS.size() != 0) {
                                labelDTOS.forEach(e -> baseMapper.saveLabel(e.getId(), brandId, openId));
                        }
                } catch (Exception e) {
                        log.error("修改客户标签出错，原因是：" + e.getMessage());
                }
        }
}
