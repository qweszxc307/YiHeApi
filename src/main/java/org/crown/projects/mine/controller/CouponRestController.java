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
package org.crown.projects.mine.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.crown.common.annotations.Resources;
import org.crown.common.utils.JWTUtils;
import org.crown.enums.AuthTypeEnum;
import org.crown.framework.controller.SuperController;
import org.crown.framework.responses.ApiResponses;
import org.crown.projects.classify.service.IBrandService;
import org.crown.projects.mine.model.dto.CouponDTO;
import org.crown.projects.mine.model.entity.Coupon;
import org.crown.projects.mine.model.entity.CouponBrand;
import org.crown.projects.mine.service.ICouponBrandService;
import org.crown.projects.mine.service.ICouponService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 * 优惠券模块
 * </p>
 *
 * @author ykMa
 */
@Api(tags = {"我的"}, description = "微信优惠券相关接口")
@RestController
@RequestMapping(value = "/wxServices", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
@Validated
public class CouponRestController extends SuperController {

    @Autowired
    private ICouponService couponService;

    @Autowired
    private ICouponBrandService couponBrandService;
    @Autowired
    private IBrandService brandService;


    @Resources(auth = AuthTypeEnum.AUTH)
    @ApiOperation("查询一元三张优惠券")
    @GetMapping(value = "/coupons")
    public ApiResponses<List<CouponDTO>> get() {

        List<CouponDTO> entitys = couponService.query()
                .eq(Coupon::getStatus, 0)
                .eq(Coupon::getRule, 5)
                .entitys(e -> {
                    List<Integer> brandIds = new ArrayList<>();
                    List<String> brandNames = new ArrayList<>();
                    couponBrandService.query().eq(CouponBrand::getCouponId, e.getId()).entitys(a -> {
                        brandIds.add(a.getBrandId());
                        brandNames.add(brandService.getById(a.getBrandId()).getName());
                        return a;
                    });
                    CouponDTO convert = e.convert(CouponDTO.class);
                    if (brandIds.size() == brandService.query().count()) {
                        ArrayList<String> strings = new ArrayList<>();
                        strings.add("全部");
                        convert.setBrandName(strings);
                    } else {
                        convert.setBrandName(brandNames);
                    }
                    convert.setBrandId(brandIds);
                    return convert;
                });
        return success(entitys);
    }

    @Resources(auth = AuthTypeEnum.AUTH)
    @ApiOperation("查询我的优惠券")
    @GetMapping(value = "/coupon")
    public ApiResponses<List<CouponDTO>> getCoupon() {
        String openId = JWTUtils.getOpenId(getToken());
        List<CouponDTO> couponDTOS = couponService.queryMyCoupon(openId);
        couponDTOS.forEach(e->{
            List<Integer> brandIds = new ArrayList<>();
            List<String> brandNames = new ArrayList<>();
            couponBrandService.query().eq(CouponBrand::getCouponId, e.getId()).entitys(a -> {
                brandIds.add(a.getBrandId());
                brandNames.add(brandService.getById(a.getBrandId()).getName());
                return a;
            });
            if (brandIds.size() == brandService.query().count()) {
                ArrayList<String> strings = new ArrayList<>();
                strings.add("全部");
                e.setBrandName(strings);
            } else {
                e.setBrandName(brandNames);
            }
            e.setBrandId(brandIds);
        });
        return success(couponDTOS);
    }

}
