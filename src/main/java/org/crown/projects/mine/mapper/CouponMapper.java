package org.crown.projects.mine.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.crown.framework.mapper.BaseMapper;
import org.crown.projects.mine.model.dto.CouponDTO;
import org.crown.projects.mine.model.entity.Coupon;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author ykMa
 */
@Mapper
public interface CouponMapper extends BaseMapper<Coupon> {

    List<CouponDTO> queryMyCoupon(@Param("openId") String openId);

    void deleteCouponCustomerById(@Param("id") Integer id);

}
