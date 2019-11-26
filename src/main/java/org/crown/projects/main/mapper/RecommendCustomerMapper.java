package org.crown.projects.main.mapper;

import org.apache.ibatis.annotations.Mapper;

import org.crown.framework.mapper.BaseMapper;
import org.crown.projects.main.model.entity.RecommendCustomer;

/**
 * <p>
 * 推荐返礼用户信息表 Mapper 接口
 * </p>
 *
 * @author whZhang
 */
@Mapper
public interface RecommendCustomerMapper extends BaseMapper<RecommendCustomer> {

}
