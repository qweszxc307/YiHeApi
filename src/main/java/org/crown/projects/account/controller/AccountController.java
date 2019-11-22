package org.crown.projects.account.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import net.sf.json.JSONObject;
import org.crown.common.annotations.Resources;
import org.crown.common.utils.HttpUtils;
import org.crown.common.utils.JWTUtils;
import org.crown.common.utils.WxUtils;
import org.crown.enums.AuthTypeEnum;
import org.crown.framework.controller.SuperController;
import org.crown.framework.responses.ApiResponses;
import org.crown.projects.account.model.entity.Customer;
import org.crown.projects.account.model.parm.TokenPARM;
import org.crown.projects.account.services.ICustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @version V1.0
 * @package org.crown.controller.wx
 * @title:
 * @description:
 * @author: whZhang
 * @date: 2019/11/4 10:35
 */
@Api(tags = {"WxServices"}, description = "微信账号相关接口")
@RestController
@RequestMapping(value = "/wxServices", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
@Validated
public class AccountController extends SuperController {
    @Autowired
    ICustomerService customerService;

    @Resources(auth = AuthTypeEnum.OPEN)
    @ApiOperation("微信获取token")
    @PostMapping(value = "/token")
    public ApiResponses<String> getToken(@RequestBody @Validated TokenPARM tokenPARM) {
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
            List<Customer> customerList = customerService.query().eq(Customer::getOpenId,openId).list();
            if(customerList.size()==0){
                Customer customer = new Customer();
                customer.setOpenId(openId);
                customer.setUnionId(unionId);
                customerService.save(customer);
            }
            token = JWTUtils.generate(tokenPARM.getCode(),openId,unionId);
        }
        return success(token);
    }
}
