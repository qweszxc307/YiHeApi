package org.crown.projects.main.model.dto;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
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
}
