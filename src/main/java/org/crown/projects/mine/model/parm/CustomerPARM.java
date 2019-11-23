package org.crown.projects.mine.model.parm;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import org.crown.framework.model.convert.Convert;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

/**
 * @version V1.0
 * @package org.crown.projects.account.model.parm
 * @title:
 * @description:
 * @author: whZhang
 * @date: 2019/11/23 16:02
 */
@ApiModel
@Data
@NoArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class CustomerPARM extends Convert {

    @ApiModelProperty(notes = "性别")
    @NotNull(groups = {Update.class},message = "性别不能为空")
    private String sex;
    @ApiModelProperty(notes = "昵称")
    @NotNull(groups = {Update.class},message = "昵称不能为空")
    private String nickName;
    @ApiModelProperty(notes = "联系电话")
    @NotNull(groups = {Update.class},message = "联系电话不能为空")
    private String phone;
    @ApiModelProperty(notes = "注册地址")
    @NotNull(groups = {Update.class},message = "注册地址不能为空")
    private String address;
    @ApiModelProperty(notes = "头像")
    @NotNull(groups = {Create.class},message = "用户头像不能为空")
    private String headImg;

    public interface Create {

    }

    public interface Update {

    }
}
