package org.crown.projects.pay.service.impl;

import org.crown.enums.StatusEnum;
import org.crown.framework.service.impl.BaseServiceImpl;
import org.crown.projects.classify.model.entity.Order;
import org.crown.projects.classify.service.IOrderService;
import org.crown.projects.main.mapper.MarketRecommendMapper;
import org.crown.projects.main.model.entity.MarketRecommend;
import org.crown.projects.main.model.entity.RecommendCustomer;
import org.crown.projects.main.service.IMarketRecommendService;
import org.crown.projects.main.service.IRecommendCustomerService;
import org.crown.projects.mine.model.entity.Customer;
import org.crown.projects.mine.service.ICustomerService;
import org.crown.projects.pay.service.IRecommendPayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

/**
 * @version V1.0
 * @package org.crown.projects.pay.service.impl
 * @title:
 * @description:
 * @author: whZhang
 * @date: 2019/12/12 14:11
 */
@Service
public class RecommendPayServiceImpl extends BaseServiceImpl<MarketRecommendMapper, MarketRecommend> implements IRecommendPayService {
    @Autowired
    private ICustomerService customerService;

    @Autowired
    private IOrderService orderService;

    @Autowired
    private IMarketRecommendService marketRecommendService;

    @Autowired
    private IRecommendCustomerService recommendCustomerService;

    @Override
    @Transactional(readOnly = false,rollbackFor = Exception.class)
    public void returnSendMoney(int curOrderId) {
        RecommendCustomer recommendCustomer = recommendCustomerService.query().eq(RecommendCustomer::getCurOrderId,curOrderId).entity(e->e);
        updateBounds(getCustomerByOrderId(recommendCustomer.getOrderId()),getSendReturnMoney(recommendCustomer.getRecommendId()));
    }

    @Override
    @Transactional(readOnly = false,rollbackFor = Exception.class)
    public void returnBuyMoney(int curOrderId) {
        Order order = orderService.getById(curOrderId);
        Integer activePid = order.getProductId();
        MarketRecommend marketRecommend = marketRecommendService.query().eq(MarketRecommend::getActivePid,activePid).eq(MarketRecommend::getStatus, StatusEnum.NORMAL).entity(e->e);
        /*获取当前用户对应分享人*/
        List<Map> recommendCustomerList = baseMapper.queryReturnBuyCustomer(activePid);
        for(Map map:recommendCustomerList ){
            updateBounds(getCustomerByOrderId(map.get("open_id").toString()),getBuyReturnMoney(marketRecommend.getId()));
        }
    }

    /**
     @title : 根据分享返礼信息，获取领取产品返现金额
     @params : recommendId：分享返礼ID
     */
    public BigDecimal getSendReturnMoney(int recommendId){
        MarketRecommend marketRecommend =  marketRecommendService.getById(recommendId);
        return marketRecommend.getPayReturnMoney();
    }

    /**
     @title : 根据分享返礼信息，获取购买产品返现金额
     @params : recommendId：分享返礼ID
     */
    public BigDecimal getBuyReturnMoney(int recommendId){
        MarketRecommend marketRecommend =  marketRecommendService.getById(recommendId);
        return marketRecommend.getBuyReturnMoney();
    }

    /**
     @title : 根据订单id获取用户
     @params : orderId：分享人订单id
     */
    public Customer getCustomerByOrderId(int orderId){
        Order order = orderService.getById(orderId);
        Customer customer = customerService.query().eq(Customer::getId,order.getCustomerId()).entity(e->e);
        return customer;
    }

    /**
     @title : 根据open_id获取用户
     @params : openId：openId
     */
    public Customer getCustomerByOrderId(String openId){
        Customer customer = customerService.query().eq(Customer::getOpenId,openId).entity(e->e);
        return customer;
    }

    /**
     @title : 计算返现额度，并且更新记录
     @params : orderId：分享返礼ID
     */
    @Transactional(readOnly = false,rollbackFor = Exception.class)
    public void updateBounds(Customer customer,BigDecimal addMoney){
        BigDecimal oldBounds = customer.getBonus();
        BigDecimal newBounds = oldBounds.add(addMoney);
        customer.setBonus(newBounds);
        customerService.updateById(customer);
    }
}
