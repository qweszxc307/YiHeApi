package org.crown.projects.find.model.dto;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import org.crown.enums.ImagesEnum;
import org.crown.framework.model.convert.Convert;

import java.time.LocalDateTime;

/**
 * @version V1.0
 * @package org.crown.projects.find.model.dto
 * @title:
 * @description:
 * @author: whZhang
 * @date: 2019/12/4 16:51
 */
@ApiModel
@Data
@NoArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class VideoDTO extends Convert {
    private static final long serialVersionUID = 1L;

    @ApiModelProperty(notes = "id")
    private Integer id;
    @ApiModelProperty(notes = "视频路径")
    private String url;
    @ApiModelProperty(notes = "上传时间")
    private LocalDateTime createTime;
}
