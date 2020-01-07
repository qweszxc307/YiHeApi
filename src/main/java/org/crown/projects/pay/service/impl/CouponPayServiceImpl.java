package org.crown.projects.pay.service.impl;

import org.crown.enums.CustomerCouponEnum;
import org.crown.enums.PayTypeEnum;
import org.crown.projects.mine.model.entity.Coupon;
import org.crown.projects.mine.model.entity.CouponCustomer;
import org.crown.projects.mine.model.entity.Customer;
import org.crown.projects.mine.service.ICouponCustomerService;
import org.crown.projects.mine.service.ICouponService;
import org.crown.projects.mine.service.ICustomerService;
import org.crown.projects.pay.model.entity.CustomerCoupon;
import org.crown.projects.pay.service.ICouponPayService;
import org.crown.projects.pay.service.ICustomerCouponService;
import org.crown.projects.pay.service.IPayRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;

@Transactional(readOnly = false)
@Service
public class CouponPayServiceImpl implements ICouponPayService {
    @Autowired
    private ICouponService couponService;
    @Autowired
    private ICouponCustomerService couponCustomerService;
    @Autowired
    private ICustomerService customerService;
    @Autowired
    private IPayRecordService payRecordService;
    @Autowired
    private ICustomerCouponService customerCouponService;

    @Override
    public void callBack(Map map) {
        LocalDateTime now = LocalDateTime.now();
        int customerCouponId = Integer.parseInt(map.get("out_trade_no").toString());
        CustomerCoupon customerCoupon = customerCouponService.getById(customerCouponId);
        if (customerCoupon.getStatus().equals(CustomerCouponEnum.UNPAID.value())) {
            customerCoupon.setStatus(CustomerCouponEnum.PAID.value());
            customerCouponService.updateById(customerCoupon);
            List<Coupon> list = couponService.query().eq(Coupon::getStatus, 0).eq(Coupon::getRule, 5).list();
            CouponCustomer couponCustomer = new CouponCustomer();
            couponCustomer.setOpenId(customerCoupon.getOpenId());
            couponCustomer.setCreateTime(now);
            list.forEach(e -> {
                e.setProvide(e.getProvide() + 1);
                couponCustomer.setCouponId(e.getId());
                couponCustomerService.save(couponCustomer);
                couponService.updateById(e);
            });
            Customer customer = customerService.query().eq(Customer::getOpenId, customerCoupon.getOpenId()).entity(e -> e);
            customer.setSum(customer.getSum().add(new BigDecimal("1")));
            payRecordService.create(customer, new BigDecimal("1"), PayTypeEnum.CONSUME, PayTypeEnum.NEGATIVE, PayTypeEnum.WX);
        }
    }


    @Override
    public Boolean callAfter(String openId,CustomerCoupon customerCoupon) {
        Integer count = customerCouponService.query().eq(CustomerCoupon::getOpenId, openId).count();
        if (count == 0) {
            customerCoupon.setOpenId(openId);
            customerCoupon.setCreateTime(LocalDateTime.now());
            customerCouponService.save(customerCoupon);
            return true;
        } else {
            customerCoupon = customerCouponService.query().eq(CustomerCoupon::getOpenId, openId).entity(e -> e);
            return !customerCoupon.getStatus().equals(CustomerCouponEnum.PAID.value());
        }
    }
}
