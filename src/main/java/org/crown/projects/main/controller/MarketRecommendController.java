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
package org.crown.projects.main.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import net.sf.json.JSONObject;
import org.crown.common.annotations.Resources;
import org.crown.common.utils.CustomerUtils;
import org.crown.common.utils.JWTUtils;
import org.crown.enums.AuthTypeEnum;
import org.crown.enums.OrderStatusEnum;
import org.crown.enums.RecommendStatusEnum;
import org.crown.framework.controller.SuperController;
import org.crown.framework.responses.ApiResponses;
import org.crown.projects.classify.model.entity.Order;
import org.crown.projects.classify.service.IOrderService;
import org.crown.projects.main.model.dto.RecommendProductPageDTO;
import org.crown.projects.main.model.entity.MarketRecommend;
import org.crown.projects.main.model.entity.RecommendCustomer;
import org.crown.projects.main.service.IMarketRecommendService;
import org.crown.projects.main.service.IRecommendCustomerService;
import org.crown.projects.main.service.IRecommendOrderService;
import org.crown.projects.mine.model.entity.Customer;
import org.crown.projects.mine.model.entity.Member;
import org.crown.projects.mine.service.ICustomerService;
import org.crown.projects.mine.service.IMemberService;
import org.crown.projects.pay.service.IRecommendPayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * <p>
 * 存储所有图片信息 前端控制器
 * </p>
 *
 * @author whZhang
 */
@Api(tags = {"首页"}, description = "分享返礼")
@RestController
@RequestMapping(value = "/wxServices", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
@Validated
public class MarketRecommendController extends SuperController {
    @Autowired
    private IMarketRecommendService marketRecommendService;

    @Autowired
    private IRecommendCustomerService recommendCustomerService;

    @Autowired
    private ICustomerService customerService;

    @Autowired
    private IOrderService orderService;

    @Autowired
    private IMemberService memberService;


    @Resources(auth = AuthTypeEnum.AUTH)
    @ApiOperation("查询分享返礼产品")
    @GetMapping(value="/recommend/products")
    public ApiResponses<List<RecommendProductPageDTO>> get() {
        List<RecommendProductPageDTO> list = marketRecommendService.selectRecommendProducts();
        return success(list);
    }

    @Resources(auth = AuthTypeEnum.AUTH)
    @ApiOperation("查询单个分享返礼产品")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "recommendId", value = "订单ID", required = true, paramType = "path")
    })
    @GetMapping(value="/recommend/products/{recommendId}")
    public ApiResponses<RecommendProductPageDTO> getByRecommendId(@PathVariable("recommendId") Integer recommendId) {
        RecommendProductPageDTO recommendProductPageDTO = marketRecommendService.selectRecommendProductByRId(recommendId);
        return success(recommendProductPageDTO);
    }

    @Resources(auth = AuthTypeEnum.AUTH)
    @ApiOperation("添加分享返利用户相关信息")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "orderId", value = "订单ID", required = true, paramType = "path")
    })
    @GetMapping(value="/recommend/customer/{orderId}")
    public ApiResponses<Void> add(@PathVariable("orderId") Integer orderId) {
        String openId = JWTUtils.getOpenId(getToken());
        RecommendCustomer recommendCustomer = new RecommendCustomer();
        recommendCustomer.setOrderId(orderId);
        recommendCustomer.setCurrentOpenid(openId);
        recommendCustomerService.save(recommendCustomer);
        return success();
    }

    @Resources(auth = AuthTypeEnum.AUTH)
    @ApiOperation("验证分享返礼领取权限接口")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "orderId", value = "父类订单ID", required = true, paramType = "path"),
            @ApiImplicitParam(name = "recommendId", value = "分享返礼ID", required = true, paramType = "path")
    })
    @GetMapping(value="/recommend/check/{orderId}/{recommendId}")
    public ApiResponses<Void> check(@PathVariable("orderId") Integer orderId, @PathVariable("recommendId") Integer recommendId) {
        String openId = JWTUtils.getOpenId(getToken());
        Integer customerCount = customerService.query().eq(Customer::getOpenId,openId).count();
        Order order = orderService.getById(orderId);
        /*判断该订单下线是否已经达到上限*/
        int count = marketRecommendService.countPayNum(orderId,recommendId);
        MarketRecommend marketRecommend = marketRecommendService.query().eq(MarketRecommend::getId,recommendId).entity(e->e);
        if(count >= marketRecommend.getPeopleNum()){
            return success(RecommendStatusEnum.NO_MEMBER.value(),RecommendStatusEnum.NO_MEMBER.msg(),null);
        }
        if(customerCount == 0){
            /*新用户*/
            Customer customer = new Customer();
            customer.setOpenId(openId);
            customer.setMId(memberService.query().eq(Member::getLevel,0).getOne().getId());
            customer.setMemberNum(CustomerUtils.getCustomerNum());
            customer.setParentId(order.getCustomerId());
            customerService.save(customer);
            return success(RecommendStatusEnum.SUCCESS.value(),RecommendStatusEnum.SUCCESS.msg(),null);
        }else{
            /*用户存在*/
            Customer currentCustomer = customerService.query().eq(Customer::getOpenId,openId).entity(e->e);
            Customer orderCustomer = customerService.query().eq(Customer::getId,order.getCustomerId()).entity(e->e);
            if(orderCustomer.getParentId().equals(currentCustomer.getId())){
                /*若领取人是分享人的上级用户*/
                return success(RecommendStatusEnum.SHARE_ERROR.value(),RecommendStatusEnum.SHARE_ERROR.msg(),null);
            }
            if(currentCustomer.equals(orderCustomer)){
                /*自己分享自己领*/
                //return success(RecommendStatusEnum.SHARE_SELF_ERROR.value(),RecommendStatusEnum.SHARE_SELF_ERROR.msg(),null);
                return success(RecommendStatusEnum.SUCCESS.value(),RecommendStatusEnum.SUCCESS.msg(),null);
            }else{
                if(currentCustomer.getParentId() == null){
                    /*当前用户未绑定父级用户*/
                    currentCustomer.setParentId(order.getCustomerId());
                    customerService.updateById(currentCustomer);
                    return success(RecommendStatusEnum.SUCCESS.value(),RecommendStatusEnum.SUCCESS.msg(),null);
                }else {
                    if(currentCustomer.getParentId().equals(orderCustomer.getId())){
                        /*当前用户绑定父级用户为对应分享人，查询该用户是否领取过商品*/
                        List<RecommendCustomer> recommendCustomerList = recommendCustomerService.query()
                                .eq(RecommendCustomer::getCurrentOpenid,openId)
                                .eq(RecommendCustomer::getRecommendId,recommendId)
                                .list();
                        for(RecommendCustomer recommendCustomer : recommendCustomerList){
                            /*查询是否有购买记录*/
                            Integer payCount = orderService.query()
                                    .eq(Order::getId,recommendCustomer.getCurOrderId())
                                    .eq(Order::getStatus, OrderStatusEnum.PAY_UP.value())
                                    .count();
                            if(payCount>0){
                                /*若有已购买记录*/
                                return success(RecommendStatusEnum.ACTIVE_EXIST.value(),RecommendStatusEnum.ACTIVE_EXIST.msg(),null);
                            }else{
                                /*无已购买记录*/
                                return success(RecommendStatusEnum.SUCCESS.value(),RecommendStatusEnum.SUCCESS.msg(),null);
                            }
                        }
                        return success(RecommendStatusEnum.SUCCESS.value(),RecommendStatusEnum.SUCCESS.msg(),null);
                    }else{
                        /*当前用户绑定父级用户不为对应分享人*/
                        return success(RecommendStatusEnum.PARENT_ERROR.value(),RecommendStatusEnum.PARENT_ERROR.msg(),null);
                    }
                }
            }
        }
    }
}
