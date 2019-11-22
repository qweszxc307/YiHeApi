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

    /**
     * 获取微信授权Token
     */
    public static String getWxAccessToken(String appId,String secret){
        String result = HttpUtils.httpRequest("https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid="+appId+"&secret="+secret,"GET",null);
        JSONObject resultObj = JSONObject.fromObject(result);
        String resultToken = "";
        if(resultObj.containsKey("access_token")){
            resultToken = resultObj.get("access_token").toString();
        }
        return resultToken;
    }
}
