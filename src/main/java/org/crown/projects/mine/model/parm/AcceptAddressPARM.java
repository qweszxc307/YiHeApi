package org.crown.projects.mine.model.parm;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import org.crown.enums.StatusEnum;
import org.crown.framework.model.convert.Convert;

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
public class AcceptAddressPARM extends Convert {

    @ApiModelProperty(notes = "收货姓名")
    @NotNull(groups = {AcceptAddressPARM.Create.class,AcceptAddressPARM.Update.class},message = "收货姓名不能为空")
    private String name;
    @ApiModelProperty(notes = "手机号码")
    @NotNull(groups = {AcceptAddressPARM.Create.class,AcceptAddressPARM.Update.class},message = "手机号码不能为空")
    private String phone;
    @ApiModelProperty(notes = "省")
    @NotNull(groups = {AcceptAddressPARM.Create.class,AcceptAddressPARM.Update.class},message = "省不能为空")
    private String province;
    @ApiModelProperty(notes = "市")
    @NotNull(groups = {AcceptAddressPARM.Create.class,AcceptAddressPARM.Update.class},message = "市不能为空")
    private String city;
    @ApiModelProperty(notes = "县(区)")
    @NotNull(groups = {AcceptAddressPARM.Create.class,AcceptAddressPARM.Update.class},message = "县(区)不能为空")
    private String district;
    @ApiModelProperty(notes = "街道")
    @NotNull(groups = {AcceptAddressPARM.Create.class,AcceptAddressPARM.Update.class},message = "街道不能为空")
    private String street;
    @ApiModelProperty(notes = "状态：(0默认，1不默认)")
    @NotNull(groups = {Create.class,Status.class}, message = "状态不能为空")
    private StatusEnum status;

    public interface Create {

    }

    public interface Update {

    }

    public interface Status {

    }
}
