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
import org.crown.common.utils.CustomerUtils;
import org.crown.common.utils.JWTUtils;
import org.crown.enums.AuthTypeEnum;
import org.crown.framework.responses.ApiResponses;
import org.crown.projects.mine.model.dto.CustomerDTO;
import org.crown.projects.mine.model.entity.Customer;
import org.crown.projects.mine.model.entity.Feedback;
import org.crown.projects.mine.model.entity.Member;
import org.crown.projects.mine.model.parm.CustomerPARM;
import org.crown.projects.mine.model.parm.FeedbackPARM;
import org.crown.projects.mine.service.IFeedbackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.http.MediaType;
import org.springframework.validation.annotation.Validated;

import io.swagger.annotations.Api;
import org.springframework.web.bind.annotation.RestController;
import org.crown.framework.controller.SuperController;

/**
 * <p>
 * 反馈信息表 前端控制器
 * </p>
 *
 * @author whZhang
 */
@Api(tags = {"我的"}, description = "反馈信息表相关接口")
@RestController
@RequestMapping(value = "/wxServices", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
@Validated
public class FeedbackRestController extends SuperController {

        @Autowired
        private IFeedbackService feedbackService;

        @Resources(auth = AuthTypeEnum.OPEN)
        @ApiOperation("用户反馈")
        @PostMapping(value = "/feedback")
        public ApiResponses<Void> login(@RequestBody @Validated FeedbackPARM feedbackPARM) {
                String openId = JWTUtils.getOpenId(getToken());
                Feedback feedback = feedbackPARM.convert(Feedback.class);
                feedback.setOpenid(openId);
                feedbackService.save(feedback);
                return success();
        }
        }
