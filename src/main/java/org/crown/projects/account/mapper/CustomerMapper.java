package org.crown.projects.account.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.crown.framework.mapper.BaseMapper;
import org.crown.projects.account.model.entity.Customer;

/**
 * <p>
 * Mapper 接口
 * </p>
 *
 * @author ykMa
 */
@Mapper
public interface CustomerMapper extends BaseMapper<Customer> {
}
