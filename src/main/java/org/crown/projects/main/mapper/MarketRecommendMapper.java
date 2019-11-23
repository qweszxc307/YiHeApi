package org.crown.projects.main.mapper;

import com.baomidou.mybatisplus.core.metadata.IPage;
import org.apache.ibatis.annotations.Mapper;
import org.crown.framework.mapper.BaseMapper;
import org.crown.projects.main.model.dto.RecommendProductPageDTO;
import org.crown.projects.main.model.entity.MarketRecommend;

import java.util.List;

/**
 * <p>
 * 推荐返礼信息表 Mapper 接口
 * </p>
 *
 * @author whZhang
 */
@Mapper
public interface MarketRecommendMapper extends BaseMapper<MarketRecommend> {
    /**
     * 查询分享反礼商品
     *
     * @return Result<RecommendProductPageDTO>
     */
    List<RecommendProductPageDTO> selectRecommendProducts();
}
