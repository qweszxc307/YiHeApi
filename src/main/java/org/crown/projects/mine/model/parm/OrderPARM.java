package org.crown.projects.mine.model.parm;

import io.swagger.annotations.ApiModel;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import org.crown.framework.model.convert.Convert;
import org.crown.projects.classify.model.dto.ProductDTO;
import org.crown.projects.mine.model.dto.AcceptAddressDTO;

import java.math.BigDecimal;

/**
 * @version V1.0
 * @package org.crown.model.wx.parm
 * @title:
 * @description:
 * @author: ykMa
 * @date: 2019/11/14 13:48
 */
@ApiModel
@Data
@NoArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class OrderPARM  extends Convert {
    private static final long serialVersionUID = 1L;
    private Integer orderType;
    private BigDecimal postFee;
    private ProductDTO product;
    private AcceptAddressDTO address;
    private BigDecimal price;
    private Integer couponId;
    private Integer parentOrderId;
    private Integer recommendId;

}
