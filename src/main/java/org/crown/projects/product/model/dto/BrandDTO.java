package org.crown.projects.product.model.dto;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import org.crown.enums.StatusEnum;
import org.crown.framework.model.convert.Convert;

/**
 * @version V1.0
 * @package org.crown.projects.product.model.dto
 * @title:
 * @description:
 * @author: whZhang
 * @date: 2019/11/18 16:36
 */
@ApiModel
@Data
@NoArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class BrandDTO extends Convert {
    private static final long serialVersionUID = 1L;

    @ApiModelProperty(notes = "id")
    private Integer id;
    @ApiModelProperty(notes = "name")
    private String name;
    @ApiModelProperty(notes = "imgUrl")
    private String imgUrl;
}
