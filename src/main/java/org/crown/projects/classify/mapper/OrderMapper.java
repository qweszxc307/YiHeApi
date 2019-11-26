package org.crown.projects.classify.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.crown.framework.mapper.BaseMapper;
import org.crown.projects.classify.model.entity.Order;
import org.crown.projects.classify.model.entity.PostFee;

import java.math.BigDecimal;
import java.util.List;

/**
 * <p>
 * 订单主表 Mapper 接口
 * </p>
 *
 * @author ykMa
 */
@Mapper
public interface OrderMapper extends BaseMapper<Order> {
    /**
     * 根据名称查地址的id
     *
     * @param province
     * @return
     */
    Integer queryCityIdByAreaName(@Param("province") String province);

    /**
     * 查询邮费策略 返货策略的对象
     *
     * @param cityId  地区id
     * @param productId   商品id
     * @return  策略
     */
    List<PostFee> queryPostFee(@Param("cityId") Integer cityId, @Param("productId") Integer productId);

    /**
     * 根据configId查询下面的所有
     * @param configId
     * @return
     */
    BigDecimal queryConfigById(Integer configId);
}
