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
package org.crown.projects.pay.service.impl;

import org.crown.enums.PayTypeEnum;
import org.crown.framework.service.impl.BaseServiceImpl;
import org.crown.projects.mine.model.entity.Customer;
import org.crown.projects.pay.mapper.PayRecordMapper;
import org.crown.projects.pay.model.entity.PayRecord;
import org.crown.projects.pay.service.IPayRecordService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.time.LocalDateTime;

/**
 * <p>
 * 交易记录表 服务实现类
 * </p>
 *
 * @author ykMa
 */
@Service
public class PayRecordServiceImpl extends BaseServiceImpl<PayRecordMapper, PayRecord> implements IPayRecordService {

    /**
     *
     * @param customer 用户信息    用户信息是 交易结束需要保存的用户信息，不是交易之前
     * @param sum      交易金额
     * @param type     消费类型
     * @param sumType  加减类型    增加是 1    减少是-1
     * @param pay      支付类型
     */
    @Transactional(readOnly = false)
    @Override
    public void create(Customer customer, BigDecimal sum, PayTypeEnum type, PayTypeEnum sumType, PayTypeEnum pay) {
        PayRecord payRecord = new PayRecord();
        if (sumType.equals(PayTypeEnum.NEGATIVE)) {
            payRecord.setSum(new BigDecimal("0").subtract(sum));
        } else if (sumType.equals(PayTypeEnum.POSITIVE)) {
            payRecord.setSum(sum);
        }
        if (pay.equals(PayTypeEnum.YE)) {
            payRecord.setBonus(customer.getBonus());
        }
        payRecord.setType(type.value());
        payRecord.setOpenId(customer.getOpenId());
        payRecord.setPay(pay.value());
        payRecord.setCreateTime(LocalDateTime.now());
        save(payRecord);
    }
}
