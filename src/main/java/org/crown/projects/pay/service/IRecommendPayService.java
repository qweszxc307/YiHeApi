package org.crown.projects.pay.service;

import org.crown.framework.service.BaseService;
import org.crown.projects.main.model.entity.MarketRecommend;

/**
 * @version V1.0
 * @package org.crown.projects.pay.service
 * @title:
 * @description:
 * @author: whZhang
 * @date: 2019/12/12 14:09
 */
public interface IRecommendPayService extends BaseService<MarketRecommend> {
     void returnSendMoney(int curOrderId);

    void returnBuyMoney(int curOrderId);
}
