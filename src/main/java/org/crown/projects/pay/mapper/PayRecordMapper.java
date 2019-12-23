package org.crown.projects.pay.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.crown.framework.mapper.BaseMapper;
import org.crown.projects.pay.model.entity.PayRecord;

/**
 * <p>
 * 交易记录表 Mapper 接口
 * </p>
 *
 * @author ykMa
 */
@Mapper
public interface PayRecordMapper extends BaseMapper<PayRecord> {

}
