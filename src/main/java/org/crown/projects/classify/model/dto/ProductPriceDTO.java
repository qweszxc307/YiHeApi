package org.crown.projects.classify.model.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import org.crown.framework.model.convert.Convert;
import org.crown.projects.classify.model.entity.ProductPrice;

import java.math.BigDecimal;
import java.util.List;

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
public class ProductPriceDTO extends Convert {
    private static final long serialVersionUID = 1L;

    @ApiModelProperty(notes = "区间起始数量")
    private Integer sNum;
    @ApiModelProperty(notes = "区间结束数量")
    private Integer eNum;
    @ApiModelProperty(notes = "产品价格")
    private BigDecimal price;
}
