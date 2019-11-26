package org.crown.projects.main.model.dto;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import org.crown.enums.ImagesEnum;
import org.crown.enums.StatusEnum;
import org.crown.framework.model.convert.Convert;

/**
 * @version V1.0
 * @package org.crown.projects.classify.model.dto
 * @title:
 * @description:
 * @author: whZhang
 * @date: 2019/11/18 16:36
 */
@ApiModel
@Data
@NoArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class ImageDTO extends Convert {
    private static final long serialVersionUID = 1L;

    @ApiModelProperty(notes = "id")
    private Integer id;
    @ApiModelProperty(notes = "imgUrl")
    private String imgUrl;
    @ApiModelProperty(notes = "图片类型(0:轮播图;1:品牌图片;2:产品图片;3:产品详情图片")
    private ImagesEnum type;
}
