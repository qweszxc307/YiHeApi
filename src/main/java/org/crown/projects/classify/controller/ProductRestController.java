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

import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.crown.common.annotations.Resources;
import org.crown.enums.AuthTypeEnum;
import org.crown.framework.responses.ApiResponses;
import org.crown.projects.classify.model.dto.ProductDTO;
import org.crown.projects.classify.model.dto.ProductPriceDTO;
import org.crown.projects.classify.model.entity.Image;
import org.crown.projects.classify.model.entity.Product;
import org.crown.projects.classify.model.entity.ProductImage;
import org.crown.projects.classify.model.entity.ProductPrice;
import org.crown.projects.classify.service.IImageService;
import org.crown.projects.classify.service.IProductImageService;
import org.crown.projects.classify.service.IProductPriceService;
import org.crown.projects.classify.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.http.MediaType;
import org.springframework.validation.annotation.Validated;

import io.swagger.annotations.Api;
import org.springframework.web.bind.annotation.RestController;
import org.crown.framework.controller.SuperController;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * <p>
 * 产品表 前端控制器
 * </p>
 *
 * @author whZhang
 */
@Api(tags = {"分类"}, description = "分类产品表相关接口")
@RestController
@RequestMapping(value = "/wxServices", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
@Validated
public class ProductRestController extends SuperController {
        @Autowired
        IProductService productService;
        @Autowired
        IProductImageService productImageService;
        @Autowired
        IImageService imageService;
        @Autowired
        IProductPriceService productPriceService;

        @Resources(auth = AuthTypeEnum.AUTH)
        @ApiOperation("查询品牌对应产品列表")
        @ApiImplicitParams({
                @ApiImplicitParam(name = "id", value = "品牌ID", required = true, paramType = "path")
        })
        @GetMapping("/product/{id}")
        public ApiResponses<List<ProductDTO>> get(@PathVariable("id") Integer brandId) {
                List<ProductDTO> productDTOList = productService.query()
                        .eq(Product::getStatus,0)
                        .eq(Product::getBrandId,brandId)
                        .notInSql(Product::getId, "select send_pid from market_recommend")
                        .entitys(
                                e -> {
                                        ProductDTO productDTO = e.convert(ProductDTO.class);
                                        ProductImage productImage = productImageService.query()
                                                .eq(ProductImage::getPId,e.getId())
                                                .getOne();
                                        Image image = imageService.query()
                                                .eq(Image::getId,productImage.getImgId())
                                                .getOne();
                                        productDTO.setImgUrl(image.getImgUrl());
                                        ProductPrice productPrice = productPriceService.query()
                                            .eq(ProductPrice::getPid,e.getId())
                                            .orderByAsc(ProductPrice::getPrice)
                                            .getOne();
                                        productDTO.setPrice(productPrice.getPrice());
                                        return productDTO;
                                }
                        );
                return success(productDTOList);
        }

        @Resources(auth = AuthTypeEnum.AUTH)
        @ApiOperation("查询相关产品的价格区间")
        @ApiImplicitParams({
                @ApiImplicitParam(name = "id", value = "产品ID", required = true, paramType = "path")
        })
        @GetMapping("/product/prices/{id}")
        public ApiResponses<List<ProductPriceDTO>> getPricesById(@PathVariable("id") Integer productId) {
            List<ProductPriceDTO> productPriceDTOList = productPriceService.query().eq(ProductPrice::getPid,productId).entitys(
                    e->{
                        return e.convert(ProductPriceDTO.class);
                    }
            );
            return success(productPriceDTOList);
        }


}
