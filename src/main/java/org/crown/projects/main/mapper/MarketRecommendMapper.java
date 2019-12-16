package org.crown.projects.main.mapper;

import com.baomidou.mybatisplus.core.metadata.IPage;
import io.swagger.models.auth.In;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.crown.framework.mapper.BaseMapper;
import org.crown.projects.main.model.dto.RecommendProductPageDTO;
import org.crown.projects.main.model.entity.MarketRecommend;

import java.util.List;
import java.util.Map;

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

    /**
     * 查询分享返礼购买用户
     *
     * @return Result<RecommendProductPageDTO>
     */
    List<Map> queryReturnBuyCustomer(@Param("productId") Integer productId);
}
