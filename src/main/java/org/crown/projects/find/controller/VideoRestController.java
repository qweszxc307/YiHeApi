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
package org.crown.projects.find.controller;

import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.crown.common.annotations.Resources;
import org.crown.common.utils.JWTUtils;
import org.crown.common.utils.QiNiuUtils;
import org.crown.enums.AuthTypeEnum;
import org.crown.framework.controller.SuperController;
import org.crown.framework.responses.ApiResponses;
import org.crown.projects.find.model.dto.VideoDTO;
import org.crown.projects.find.model.entity.Video;
import org.crown.projects.find.service.IVideoService;
import org.crown.projects.system.model.entity.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/**
 * <p>
 * 发现小视频 前端控制器
 * </p>
 *
 * @author whZhang
 */
@Api(tags = {"Video"}, description = "发现小视频相关接口")
@RestController
@RequestMapping(value = "/wxServices", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
@Validated
public class VideoRestController extends SuperController {

        @Autowired
        private IVideoService videoService;
        @Autowired
        private QiNiuUtils qiNiuUtils;

        @Resources(auth = AuthTypeEnum.AUTH)
        @ApiOperation("查询所有发现视频")
        @ApiImplicitParams({
                @ApiImplicitParam(name = "type", value = "0:所有视频;1:我的视频",  paramType = "body")
        })
        @GetMapping(value="/videos")
        public ApiResponses<List<VideoDTO>> videos(@RequestParam Integer type) {
                List<VideoDTO> videoDTOList = new ArrayList<>();
                if(type.equals(0)){
                        videoDTOList = videoService.query().entitys(e->{
                                return e.convert(VideoDTO.class);
                        });
                }else if(type.equals(1)){
                        String openId = JWTUtils.getOpenId(getToken());
                        videoDTOList = videoService.query().eq(Video::getOpenid,openId).entitys(e->{
                                return e.convert(VideoDTO.class);
                        });
                }
                return success(videoDTOList);
        }


        @Resources(auth = AuthTypeEnum.AUTH)
        @ApiOperation("上传视频")
        @ApiImplicitParams({
                @ApiImplicitParam(name = "file", value = "视频", required = true, paramType = "body")
        })
        @PostMapping(value = "/video/upload")
        public ApiResponses<Void> upload(@RequestBody MultipartFile file){
                String openId = JWTUtils.getOpenId(getToken());
                String originalFilename = file.getOriginalFilename();
                String fileExtend = originalFilename.substring(originalFilename.lastIndexOf("."));
                //默认不指定key的情况下，以文件内容的hash值作为文件名
                String fileKey = UUID.randomUUID().toString().replace("-", "") + fileExtend;
                try {
                        Video video = new Video();
                        String url = qiNiuUtils.upload(file.getInputStream(),fileKey);
                        video.setOpenid(openId);
                        video.setUrl(url);
                        videoService.save(video);
                } catch (IOException e) {
                        e.printStackTrace();
                }
                return success();
        }

}
