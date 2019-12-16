package org.crown.projects.main.model.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import org.crown.framework.model.BaseModel;
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
public class RecommendProductPageDTO extends BaseModel {
    private static final long serialVersionUID = 1L;

    @ApiModelProperty(notes = "指定推荐产品id")
    private Integer activePid;
    @ApiModelProperty(notes = "领取产品id")
    private Integer sendPid;
    @ApiModelProperty(notes = "最低价格")
    private BigDecimal carriagePrice;
    @ApiModelProperty(notes = "会员名称")
    private String memberName;
    @ApiModelProperty(notes = "指定产品名称")
    private String activeName;
    @ApiModelProperty(notes = "指定产品库存")
    private Integer activeStock;
    @ApiModelProperty(notes = "指定产品名称")
    private String sendName;
    @ApiModelProperty(notes = "指定产品价格")
    private BigDecimal activeProductPrice;
    @ApiModelProperty(notes = "领取产品价格")
    private BigDecimal sendPrice;
    @ApiModelProperty(notes = "指定产品图片")
    private String activeImgUrl;
    @ApiModelProperty(notes = "领取产品图片")
    private String sendImgUrl;
}
