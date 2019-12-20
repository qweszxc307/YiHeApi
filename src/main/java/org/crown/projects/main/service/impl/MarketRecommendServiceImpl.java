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
package org.crown.projects.main.service.impl;

import org.crown.framework.service.impl.BaseServiceImpl;
import org.crown.projects.main.mapper.MarketRecommendMapper;
import org.crown.projects.main.model.dto.RecommendProductPageDTO;
import org.crown.projects.main.model.entity.MarketRecommend;
import org.crown.projects.main.service.IMarketRecommendService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 * 推荐返礼信息表 服务实现类
 * </p>
 *
 * @author whZhang
 */
@Service
public class MarketRecommendServiceImpl extends BaseServiceImpl<MarketRecommendMapper, MarketRecommend> implements IMarketRecommendService {

        @Override
        public List<RecommendProductPageDTO> selectRecommendProducts() {
                return baseMapper.selectRecommendProducts();
        }

        @Override
        public RecommendProductPageDTO selectRecommendProductByRId(Integer recommendId) {
                return baseMapper.selectRecommendProductByRId(recommendId);
        }

        @Override
        public Integer countPayNum(Integer orderID, Integer recommendId) {
                return baseMapper.countPayNum(orderID,recommendId);
        }
}