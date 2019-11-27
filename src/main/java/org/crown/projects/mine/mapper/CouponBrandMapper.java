package org.crown.projects.mine.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.crown.framework.mapper.BaseMapper;
import org.crown.projects.mine.model.entity.CouponBrand;

/**
 * <p>
 * 优惠券和品牌关联表 Mapper 接口
 * </p>
 *
 * @author ykMa
 */
@Mapper
public interface CouponBrandMapper extends BaseMapper<CouponBrand> {

}
