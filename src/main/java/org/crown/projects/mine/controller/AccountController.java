package org.crown.projects.mine.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import net.sf.json.JSONObject;
import org.crown.common.annotations.Resources;
import org.crown.common.utils.CustomerUtils;
import org.crown.common.utils.HttpUtils;
import org.crown.common.utils.JWTUtils;
import org.crown.enums.AuthTypeEnum;
import org.crown.framework.controller.SuperController;
import org.crown.framework.responses.ApiResponses;
import org.crown.projects.mine.model.dto.AcceptAddressDTO;
import org.crown.projects.mine.model.dto.CustomerDTO;
import org.crown.projects.mine.model.dto.LabelBrandDTO;
import org.crown.projects.mine.model.dto.LabelDTO;
import org.crown.projects.mine.model.entity.*;
import org.crown.projects.mine.model.parm.AcceptAddressPARM;
import org.crown.projects.mine.model.parm.CustomerPARM;
import org.crown.projects.mine.model.parm.TokenPARM;
import org.crown.projects.mine.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Objects;

/**
 * @version V1.0
 * @package org.crown.controller.wx
 * @title:
 * @description:
 * @author: whZhang
 * @date: 2019/11/4 10:35
 */
@Api(tags = {"我的"}, description = "微信账号相关接口")
@RestController
@RequestMapping(value = "/wxServices", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
@Validated
public class AccountController extends SuperController {
    @Autowired
    ICustomerService customerService;
    @Autowired
    IMemberService memberService;
    @Autowired
    ILabelBrandService labelBrandService;
    @Autowired
    IAcceptAddressService acceptAddressService;
    @Autowired
    private ILabelService labelService;

    @Resources(auth = AuthTypeEnum.OPEN)
    @ApiOperation("微信获取token")
    @PostMapping(value = "/token")
    public ApiResponses<String> get(@RequestBody @Validated TokenPARM tokenPARM) {
        String openId ;
        String unionId = null;
        String token;
        String result = HttpUtils.httpRequest("https://api.weixin.qq.com/sns/jscode2session?appid="+appId+"&secret="+secret+"&js_code="+tokenPARM.getCode()+"&grant_type=authorization_code","GET",null);
        JSONObject jsonObject = JSONObject.fromObject(result);
        if(!jsonObject.containsKey("openid")){
            return success(HttpStatus.BAD_REQUEST,null);
        }else{
            openId = jsonObject.get("openid").toString();
            if(jsonObject.containsKey("unionid")){
                unionId = jsonObject.get("unionid").toString();
            }

            token = JWTUtils.generate(tokenPARM.getCode(),openId,unionId);
        }
        return success(token);
    }

    @Resources(auth = AuthTypeEnum.OPEN)
    @ApiOperation("用户登录")
    @PostMapping(value = "/login")
    public ApiResponses<CustomerDTO> login(@RequestBody @Validated(CustomerPARM.Create.class) CustomerPARM loginPARM) {
        String openId = JWTUtils.getOpenId(getToken());
        Customer customer =  customerService.query().eq(Customer::getOpenId,openId).getOne();
        if(customer == null){
            customer = new Customer();
            customer.setOpenId(openId);
            customer.setMId(memberService.query().eq(Member::getLevel,0).getOne().getId());
            customer.setMemberNum(CustomerUtils.getCustomerNum());
            customerService.save(customer);
        }else{
            customer.setNickName(loginPARM.getNickName());
            customer.setHeadImg(loginPARM.getHeadImg());
            customerService.saveOrUpdate(customer);
        }
        CustomerDTO customerDTO = customerService.query().eq(Customer::getOpenId,openId).entity(
                e->{
                    Member member = memberService.query().eq(Member::getId,e.getMId()).getOne();
                    CustomerDTO result = e.convert(CustomerDTO.class);
                    result.setMemberName(member.getName());
                    return result;
                }
        );
        return success(customerDTO);
    }

    @Resources(auth = AuthTypeEnum.AUTH)
    @ApiOperation("用户详情查看")
    @GetMapping(value = "/user/detail")
    public ApiResponses<CustomerDTO> detail() {
        String openId = JWTUtils.getOpenId(getToken());
        CustomerDTO customerDTO = customerService.query().eq(Customer::getOpenId,openId).entity(
                e->{
                    Member member = memberService.query().eq(Member::getId,e.getMId()).getOne();
                    CustomerDTO result = e.convert(CustomerDTO.class);
                    result.setMemberName(member.getName());
                    List<LabelBrandDTO> brandLabelList = labelBrandService.query().eq(LabelBrand::getStatus,0).entitys(f-> {
                        LabelBrandDTO convert = f.convert(LabelBrandDTO.class);
                        Integer brandId = convert.getId();
                        convert.setLabels(labelService.queryLabelByOpenId(openId, brandId));
                        return convert;
                    });
                    result.setLabelBrandList(brandLabelList);
                    return result;
                }
        );
        return success(customerDTO);
    }

    @Resources(auth = AuthTypeEnum.AUTH)
    @ApiOperation("用户详情修改")
    @PutMapping(value = "/user/detail")
    public ApiResponses<Void> detail(@RequestBody @Validated(CustomerPARM.Update.class) CustomerPARM customerPARM) {
        String openId = JWTUtils.getOpenId(getToken());
        Integer id = customerService.query().eq(Customer::getOpenId,openId).getOne().getId();
        Customer customer = customerPARM.convert(Customer.class);
        customer.setId(id);
        customerService.updateById(customer);
        return success();
    }

    @Resources(auth = AuthTypeEnum.AUTH)
    @ApiOperation("查询用户收件地址")
    @GetMapping(value = "/express/address")
    public ApiResponses<List<AcceptAddressDTO>> get() {
        String openId = JWTUtils.getOpenId(getToken());
        List<AcceptAddressDTO> acceptAddressDTOList = acceptAddressService.query().eq(AcceptAddress::getOpenid,openId).entitys(
                e->{
                    AcceptAddressDTO acceptAddressDTO = e.convert(AcceptAddressDTO.class);
                    return acceptAddressDTO;
                }
        );
        return success(acceptAddressDTOList);
    }

    @Resources(auth = AuthTypeEnum.AUTH)
    @ApiOperation("新增收件地址")
    @PostMapping(value = "/express/address")
    public ApiResponses<Void> add(@RequestBody @Validated(AcceptAddressPARM.Create.class) AcceptAddressPARM acceptAddressPARM) {
        String openId = JWTUtils.getOpenId(getToken());
        Integer id =customerService.query().eq(Customer::getOpenId,openId).getOne().getId();
        AcceptAddress acceptAddress = acceptAddressPARM.convert(AcceptAddress.class);
        acceptAddress.setCId(id);
        acceptAddress.setOpenid(openId);
        acceptAddressService.save(acceptAddress);
        return success();
    }

    @Resources(auth = AuthTypeEnum.AUTH)
    @ApiOperation("修改收件地址")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "id", value = "收件地址id", required = true, paramType = "path")
    })
    @PutMapping(value = "/express/address/{id}")
    public ApiResponses<Void> update(@PathVariable("id") Integer id,@RequestBody @Validated(AcceptAddressPARM.Update.class) AcceptAddressPARM acceptAddressPARM) {
        AcceptAddress acceptAddress = acceptAddressPARM.convert(AcceptAddress.class);
        acceptAddress.setId(id);
        acceptAddressService.updateById(acceptAddress);
        return success();
    }

    @Resources(auth = AuthTypeEnum.AUTH)
    @ApiOperation("删除收件地址")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "id", value = "收件地址id", required = true, paramType = "path")
    })
    @DeleteMapping(value = "/express/address/{id}")
    public ApiResponses<Void> delete(@PathVariable("id") Integer id) {
        acceptAddressService.removeById(id);
        return success();
    }

    @Resources(auth = AuthTypeEnum.AUTH)
    @ApiOperation("设置默认收件地址")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "id", value = "收件地址id", required = true, paramType = "path")
    })
    @PutMapping(value = "/express/address/status/{id}")
    public ApiResponses<Void> status(@PathVariable("id") Integer id,@RequestBody @Validated(AcceptAddressPARM.Status.class) AcceptAddressPARM acceptAddressPARM) {
        AcceptAddress acceptAddress = acceptAddressService.getById(id);
        acceptAddress.setStatus(acceptAddressPARM.getStatus());
        acceptAddressService.updateById(acceptAddress);
        return success();
    }

    @Resources(auth = AuthTypeEnum.AUTH)
    @ApiOperation("查询所有标签类型下的所有标签")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "id", value = "标签类型id", required = true, paramType = "path")
    })
    @GetMapping(value = "/user/label/{id}")
    public ApiResponses<List<LabelDTO>> getLabel(@PathVariable("id") Integer id) {
        return success(labelService.query().eq(Objects.nonNull(id), Label::getBrandId, id).entitys(e -> e.convert(LabelDTO.class)));
    }

    @Resources(auth = AuthTypeEnum.AUTH)
    @ApiOperation("修改标签")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "id", value = "标签类型id", required = true, paramType = "path")
    })
    @PutMapping(value = "/user/label/{id}")
    public ApiResponses<Void> updateLabel(@PathVariable("id") Integer id, @RequestBody List<LabelDTO> labelDTOS) {
        String openId = JWTUtils.getOpenId(getToken());
        labelService.updateLabel(id, labelDTOS, openId);
        return success();
    }

}
