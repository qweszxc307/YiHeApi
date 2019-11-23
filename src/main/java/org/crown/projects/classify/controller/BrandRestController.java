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
package org.crown.projects.classify.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.crown.common.annotations.Resources;
import org.crown.common.utils.JWTUtils;
import org.crown.enums.AuthTypeEnum;
import org.crown.framework.controller.SuperController;
import org.crown.framework.responses.ApiResponses;
import org.crown.projects.classify.model.dto.BrandDTO;
import org.crown.projects.classify.model.entity.Brand;
import org.crown.projects.classify.model.entity.BrandImage;
import org.crown.projects.classify.model.entity.Image;
import org.crown.projects.classify.service.IBrandImageService;
import org.crown.projects.classify.service.IBrandService;
import org.crown.projects.classify.service.IImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * <p>
 * 品牌表 前端控制器
 * </p>
 *
 * @author whZhang
 */
@Api(tags = {"分类"}, description = "分类品牌表相关接口")
@RestController
@RequestMapping(value = "/wxServices", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
@Validated
public class BrandRestController extends SuperController {
        @Autowired
        IBrandService brandService;
        @Autowired
        IBrandImageService brandImageService;
        @Autowired
        IImageService imageService;

        @Resources(auth = AuthTypeEnum.AUTH)
        @ApiOperation("查询品牌信息")
        @GetMapping(value = "/brand")
        public ApiResponses<List<BrandDTO>> get() {
            List<BrandDTO> brandDTOList = brandService.query().eq(Brand::getStatus,0).entitys(
                        e->{
                                BrandDTO brandDTO = e.convert(BrandDTO.class);
                                BrandImage brandImage = brandImageService.query().eq(BrandImage::getBId,e.getId()).getOne();
                                Image image = imageService.query().eq(Image::getId,brandImage.getImgId()).getOne();
                                brandDTO.setImgUrl(image.getImgUrl());
                                return brandDTO;
                        }
                );
                return success(brandDTOList);
        }
}
