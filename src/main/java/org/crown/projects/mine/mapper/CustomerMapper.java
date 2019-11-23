package org.crown.projects.mine.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.crown.framework.mapper.BaseMapper;
import org.crown.projects.mine.model.entity.Customer;

/**
 * <p>
 * Mapper 接口
 * </p>
 *
 * @author whZhang
 */
@Mapper
public interface CustomerMapper extends BaseMapper<Customer> {
}
