package org.crown.projects.pay.service.impl;

import lombok.extern.slf4j.Slf4j;
import org.crown.enums.OrderStatusEnum;
import org.crown.enums.PayTypeEnum;
import org.crown.projects.classify.model.entity.Order;
import org.crown.projects.classify.service.IOrderService;
import org.crown.projects.mine.model.entity.Customer;
import org.crown.projects.mine.service.ICustomerService;
import org.crown.projects.pay.service.IPayRecordService;
import org.crown.projects.pay.service.IPayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;

@Transactional(readOnly = false)
@Service
@Slf4j
public class PayServiceImpl implements IPayService {
    @Autowired
    private ICustomerService customerService;
    @Autowired
    private IOrderService orderService;
    @Autowired
    private IPayRecordService payRecordService;


    @Override
    public Boolean bonusPay(String openId, Order order) {

        try {
            Customer customer = customerService.query().eq(Customer::getOpenId, openId).getOne();
            if (customer.getBonus().compareTo(order.getTotalFee()) > -1) {
                customer.setBonus(customer.getBonus().subtract(order.getTotalFee()));
                customer.setLastTime(LocalDateTime.now());
                customer.setSum(customer.getSum().add(order.getTotalFee()));
                customer.setOrderNum(customer.getOrderNum() + 1);
                order.setStatus(OrderStatusEnum.PAY_UP.value());
                order.setPayTime(LocalDateTime.now());
                customerService.updateById(customer);
                orderService.updateById(order);
                payRecordService.create(customer, order.getTotalFee(), PayTypeEnum.CONSUME, PayTypeEnum.NEGATIVE, PayTypeEnum.YE);
                return true;
            } else {
                return false;
            }
        } catch (Exception e) {
            log.error("余额支付异常，" + e.getMessage());
            return false;
        }
    }


    @Override
    public void afterPay(Order order) {
        LocalDateTime now = LocalDateTime.now();
        order.setStatus(OrderStatusEnum.PAY_UP.value());
        order.setPayTime(now);
        Customer customer = customerService.getById(order.getCustomerId());
        customer.setLastTime(now);
        customer.setSum(customer.getSum().add(order.getTotalFee()));
        customer.setOrderNum(customer.getOrderNum() + 1);
        orderService.updateById(order);
        customerService.updateById(customer);
        payRecordService.create(customer, order.getTotalFee(), PayTypeEnum.CONSUME, PayTypeEnum.NEGATIVE, PayTypeEnum.WX);
    }
}
