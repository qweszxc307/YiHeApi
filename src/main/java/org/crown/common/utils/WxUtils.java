package org.crown.common.utils;

import lombok.extern.slf4j.Slf4j;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

/**
 * @version V1.0
 * @package org.crown.common.utils
 * @title:
 * @description:
 * @author: whZhang
 * @date: 2019/11/22 15:58
 */
@Slf4j
@Component
public class WxUtils {
    @Value("${wx.appId}")
    private String appId;

    @Value("${wx.secret}")
    private String secret;

    public static String getWxAccessToken(){
        String result = HttpUtils.httpRequest("https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=APPID&secret=APPSECRET","GET",null);
        JSONObject resultObj = JSONObject.fromObject(result);
        String resultToken = "";
        if(resultObj.containsKey("access_token")){
            resultToken = resultObj.get("access_token").toString();
        }
        return resultToken;
    }
}
