package org.crown.projects.classify.model.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import org.crown.framework.model.convert.Convert;

import java.math.BigDecimal;

/**
 * @version V1.0
 * @package org.crown.projects.classify.model
 * @title:
 * @description:
 * @author: whZhang
 * @date: 2019/11/18 16:35
 */
@Data
@NoArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class ProductDTO extends Convert {
    private static final long serialVersionUID = 1L;


    @ApiModelProperty(notes = "id")
    private Integer id;
    @ApiModelProperty(notes = "name")
    private String name;
    @ApiModelProperty(notes = "imgUrl")
    private String imgUrl;
    @ApiModelProperty(notes = "最低价格")
    private BigDecimal price;
    @ApiModelProperty(notes = "商品购买数量，下单时候用")
    private Integer num;
}
