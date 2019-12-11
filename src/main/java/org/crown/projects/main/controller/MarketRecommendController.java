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
import org.crown.common.annotations.Resources;
import org.crown.common.utils.JWTUtils;
import org.crown.enums.AuthTypeEnum;
import org.crown.framework.controller.SuperController;
import org.crown.framework.responses.ApiResponses;
import org.crown.projects.classify.model.entity.Order;
import org.crown.projects.classify.service.IOrderService;
import org.crown.projects.main.model.dto.RecommendProductPageDTO;
import org.crown.projects.main.model.entity.MarketRecommend;
import org.crown.projects.main.model.entity.RecommendCustomer;
import org.crown.projects.main.services.IMarketRecommendService;
import org.crown.projects.main.services.IRecommendCustomerService;
import org.crown.projects.mine.model.entity.Customer;
import org.crown.projects.mine.service.ICustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
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


    @Resources(auth = AuthTypeEnum.AUTH)
    @ApiOperation("查询分享返礼产品")
    @GetMapping(value="/recommend/products")
    public ApiResponses<List<RecommendProductPageDTO>> get() {
        List<RecommendProductPageDTO> list = marketRecommendService.selectRecommendProducts();
        return success(list);
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
}
