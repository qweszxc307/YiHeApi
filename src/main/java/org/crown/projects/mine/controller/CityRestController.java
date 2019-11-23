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

import io.swagger.annotations.ApiOperation;
import org.crown.common.annotations.Resources;
import org.crown.enums.AuthTypeEnum;
import org.crown.framework.responses.ApiResponses;
import org.crown.projects.mine.model.dto.CityDTO;
import org.crown.projects.mine.model.entity.City;
import org.crown.projects.mine.service.impl.ICityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.http.MediaType;
import org.springframework.validation.annotation.Validated;

import io.swagger.annotations.Api;
import org.springframework.web.bind.annotation.RestController;
import org.crown.framework.controller.SuperController;

import java.util.List;

/**
 * <p>
 * 省，市，区，联动表 前端控制器
 * </p>
 *
 * @author ykMa
 */
@Api(tags = {"City"}, description = "省，市，区，联动表相关接口")
@RestController
@RequestMapping(value = "/wxServices", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
@Validated
public class CityRestController extends SuperController {
        @Autowired
        private ICityService cityService;

        @Resources(auth = AuthTypeEnum.AUTH)
        @ApiOperation("查询所有省信息")
        @GetMapping(value="/city")
        public ApiResponses<List<CityDTO>> city() {
                List<City> list = cityService.query().eq(City::getLevel, "1").list();

                return null;
        }
}
