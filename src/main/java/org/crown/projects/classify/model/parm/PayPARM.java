package org.crown.projects.classify.model.parm;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import org.crown.framework.model.convert.Convert;

import javax.validation.constraints.NotBlank;
import java.math.BigDecimal;

/**
 * @version V1.0
 * @package org.crown.model.wx.parm
 * @title:
 * @description:
 * @author: whZhang
 * @date: 2019/11/14 13:48
 */
@ApiModel
@Data
@NoArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class PayPARM extends Convert {
    private static final long serialVersionUID = 1L;

    @ApiModelProperty(notes = "price")
    @NotBlank( message = "price不能为空")
    private BigDecimal price;
}
