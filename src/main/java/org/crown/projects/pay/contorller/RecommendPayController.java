package org.crown.projects.pay.contorller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import net.sf.json.JSONObject;
import org.apache.commons.lang.StringUtils;
import org.crown.common.annotations.Resources;
import org.crown.common.utils.JWTUtils;
import org.crown.common.utils.WxUtils;
import org.crown.enums.AuthTypeEnum;
import org.crown.enums.OrderStatusEnum;
import org.crown.enums.WxApiEnum;
import org.crown.framework.controller.SuperController;
import org.crown.framework.responses.ApiResponses;
import org.crown.projects.classify.model.entity.Order;
import org.crown.projects.classify.service.IOrderService;
import org.crown.projects.main.model.entity.MarketRecommend;
import org.crown.projects.main.model.entity.RecommendCustomer;
import org.crown.projects.main.services.IMarketRecommendService;
import org.crown.projects.main.services.IRecommendCustomerService;
import org.crown.projects.mine.model.entity.Customer;
import org.crown.projects.mine.service.ICustomerService;
import org.crown.projects.pay.utlis.PayUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

@Api(tags = {"支付"}, description = "分享返礼微信支付")
@RestController
@RequestMapping(value = "/wxServices", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
@Validated
public class RecommendPayController extends SuperController {
    @Autowired
    private ICustomerService customerService;

    @Autowired
    private IOrderService orderService;

    @Autowired
    private IMarketRecommendService marketRecommendService;

    @Autowired
    private IRecommendCustomerService recommendCustomerService;


    @Resources(auth = AuthTypeEnum.AUTH)
    @ApiOperation(value = "分享返礼请求支付接口")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "orderId", value = "订单id", required = true, paramType = "path"),
            @ApiImplicitParam(name = "payType", value = "支付类型(0:微信支付,1:微信支付)", required = true, paramType = "body")
    })
    @PostMapping(value = "/wxRecommendPay/{id}")
    public ApiResponses<JSONObject> wxRecommendPay(@PathVariable("id") Integer orderId, @RequestBody Integer payType) {
        try {
            String openId = JWTUtils.getOpenId(getToken());
            Order order = orderService.getById(orderId);
            order.setPaymentType(payType);
            if (payType == 1) {
                //余额支付 查询用户的余额是否满足订单金额，如果不满足返回异常，如果满足则减少
                Customer customer = customerService.query().eq(Customer::getOpenId, openId).getOne();
                if (customer.getBonus().compareTo(order.getTotalFee()) > -1) {
                    customer.setBonus(customer.getBonus().subtract(order.getTotalFee()));
                    customer.setLastTime(LocalDateTime.now());
                    customer.setSum(customer.getSum().add(order.getTotalFee()));
                    customer.setOrderNum(customer.getOrderNum() + 1);
                    order.setStatus(OrderStatusEnum.PAY_UP.value());
                    order.setPayTime(LocalDateTime.now());
                    customerService.updateById(customer);
                    orderService.updateById(order);
                    returnMoney(order.getOrderType(),orderId);
                    return success(HttpStatus.OK, null);
                } else {
                    return success(HttpStatus.REQUESTED_RANGE_NOT_SATISFIABLE, null);
                }
            } else {
                //生成的随机字符串
                String nonce_str = WxUtils.getRandomStringByLength(32);
                //商品名称
                String body = "测试商品名称";
                //获取客户端的ip地址
                String spbill_create_ip = WxUtils.getIpAddr(request);
                //组装参数，用户生成统一下单接口的签名
                Map<String, String> packageParams = new HashMap<>();
                packageParams.put("appid", appId);
                packageParams.put("mch_id", mchId);
                packageParams.put("nonce_str", nonce_str);
                packageParams.put("body", body);
                packageParams.put("out_trade_no", orderId + "");//商户订单号,自己的订单ID
                packageParams.put("total_fee", 1 + "");//支付金额，这边需要转成字符串类型，否则后面的签名会失败
                packageParams.put("spbill_create_ip", spbill_create_ip);
                packageParams.put("notify_url", WxApiEnum.WX_RECOMMEND_BACK_API.value());//支付成功后的回调地址
                packageParams.put("trade_type", TRADETYPE);//支付方式
                packageParams.put("openid", JWTUtils.getOpenId(getToken()) + "");//用户的openID，自己获取

                String prestr = PayUtil.createLinkString(packageParams); // 把数组所有元素，按照“参数=参数值”的模式用“&”字符拼接成字符串

                //MD5运算生成签名，这里是第一次签名，用于调用统一下单接口
                String mysign = PayUtil.sign(prestr, key, "utf-8").toUpperCase();

                //拼接统一下单接口使用的xml数据，要将上一步生成的签名一起拼接进去
                String xml = "<xml>" + "<appid>" + appId + "</appid>"
                        + "<body><![CDATA[" + body + "]]></body>"
                        + "<mch_id>" + mchId + "</mch_id>"
                        + "<nonce_str>" + nonce_str + "</nonce_str>"
                        + "<notify_url>" + WxApiEnum.WX_RECOMMEND_BACK_API.value() + "</notify_url>"
                        + "<openid>" + JWTUtils.getOpenId(getToken()) + "</openid>"
                        + "<out_trade_no>" + orderId + "</out_trade_no>"
                        + "<spbill_create_ip>" + spbill_create_ip + "</spbill_create_ip>"
                        + "<total_fee>" + 1 + "</total_fee>"//支付的金额，单位：分
                        + "<trade_type>" + TRADETYPE + "</trade_type>"
                        + "<sign>" + mysign + "</sign>"
                        + "</xml>";

                //调用统一下单接口，并接受返回的结果
                String result = PayUtil.httpRequest(WxApiEnum.WX_ORDER_API.value(), "POST", xml);

                // 将解析结果存储在HashMap中
                Map map = PayUtil.doXMLParse(result);

                String return_code = (String) map.get("return_code");//返回状态码
                String result_code = (String) map.get("result_code");//返回状态码

                JSONObject response = new JSONObject();//返回给小程序端需要的参数
                if (return_code.equals("SUCCESS") && return_code.equals(result_code)) {
                    String prepay_id = (String) map.get("prepay_id");//返回的预付单信息
                    response.put("nonceStr", nonce_str);
                    response.put("package", "prepay_id=" + prepay_id);
                    Long timeStamp = System.currentTimeMillis() / 1000;
                    response.put("timeStamp", timeStamp + "");//这边要将返回的时间戳转化成字符串，不然小程序端调用wx.requestPayment方法会报签名错误
                    //拼接签名需要的参数
                    String stringSignTemp = "appId=" + appId + "&nonceStr=" + nonce_str + "&package=prepay_id=" + prepay_id + "&signType=MD5&timeStamp=" + timeStamp;
                    //再次签名，这个签名用于小程序端调用wx.requesetPayment方法
                    String paySign = PayUtil.sign(stringSignTemp, key, "utf-8").toUpperCase();

                    response.put("paySign", paySign);
                }
                response.put("appid", appId);
                return success(response);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    //这里是支付回调接口，微信支付成功后会自动调用
    @Resources(auth = AuthTypeEnum.OPEN)
    @PostMapping(value = "/wxRecommendBack")
    public void wxNotify(HttpServletRequest request, HttpServletResponse response) throws Exception {
        BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));
        String line = null;
        StringBuilder sb = new StringBuilder();
        while ((line = br.readLine()) != null) {
            sb.append(line);
        }
        br.close();
        //sb为微信返回的xml
        String notityXml = sb.toString();
        String resXml = "";

        Map map = PayUtil.doXMLParse(notityXml);

        String returnCode = (String) map.get("return_code");
        if ("SUCCESS".equals(returnCode)) {
            //验证签名是否正确
            Map<String, String> validParams = PayUtil.paraFilter(map);  //回调验签时需要去除sign和空值参数
            String prestr = PayUtil.createLinkString(validParams);
            //根据微信官网的介绍，此处不仅对回调的参数进行验签，还需要对返回的金额与系统订单的金额进行比对等
            if (PayUtil.verify(prestr, (String) map.get("sign"), key, "utf-8")) {
                /*此处添加自己的业务逻辑代码start*/
                //注意要判断微信支付重复回调，支付成功后微信会重复的进行回调
                LocalDateTime now = LocalDateTime.now();
                int orderId = Integer.parseInt(map.get("out_trade_no").toString());
                Order order = orderService.getById(orderId);
                if (order.getStatus().equals(OrderStatusEnum.INIT)) {
                    returnMoney(order.getOrderType(),orderId);
                    order.setStatus(OrderStatusEnum.PAY_UP.value());
                    order.setPayTime(now);
                    orderService.updateById(order);
                    Customer customer = customerService.getById(order.getCustomerId());
                    customer.setLastTime(now);
                    customer.setSum(customer.getSum().add(order.getTotalFee()));
                    customer.setOrderNum(customer.getOrderNum() + 1);
                    customerService.updateById(customer);
                }
                //通知微信服务器已经支付成功
                resXml = "<xml>" + "<return_code><![CDATA[SUCCESS]]></return_code>"
                        + "<return_msg><![CDATA[OK]]></return_msg>" + "</xml> ";
            }
        } else {
            resXml = "<xml>" + "<return_code><![CDATA[FAIL]]></return_code>"
                    + "<return_msg><![CDATA[报文为空]]></return_msg>" + "</xml> ";
        }

        BufferedOutputStream out = new BufferedOutputStream(
                response.getOutputStream());
        out.write(resXml.getBytes());
        out.flush();
        out.close();
    }


    public void returnMoney(int orderType,int orderId){
        /*当前用户openId*/
        String curr_openId = JWTUtils.getOpenId(getToken());
        /*当前生成的订单*/
        Order order = orderService.getById(orderId);
        if(orderType == 0){
        }else if(orderType == 1){
            /*判断当前用户下单产品是否为分享指定产品，并返回佣金额度*/
            returnPayMoney(curr_openId,order);
        }
    }

    public void returnPayMoney(String curr_openId,Order order){
        RecommendCustomer recommendCustomer = recommendCustomerService.query().eq(RecommendCustomer::getOrderId,curr_openId).entity(e->e);
        if(recommendCustomer != null){
            /*获取指定商品订单*/
            Integer active_orderId = recommendCustomer.getOrderId();
            Order activeOrder = orderService.getById(active_orderId);
            /*判断该商品是否继续参加分享返利活动*/
            MarketRecommend marketRecommend = marketRecommendService.query().eq(MarketRecommend::getActivePid,activeOrder.getProductId()).eq(MarketRecommend::getStatus,0).entity(e->e);
            if(marketRecommend !=null){
                /*参加活动*/
                /*获取指定商品订单对应的用户*/
                Integer active_cuid = activeOrder.getCustomerId();
                Customer active_customer = customerService.getById(active_cuid);
                BigDecimal return_money = null;
                /*判断商品是指定商品还是赠送商品*/
                if(marketRecommend.getActivePid().equals(order.getProductId())){
                    /*是指定商品*/
                    return_money = marketRecommend.getBuyReturnMoney();
                }else{
                    /*是赠送商品*/
                    return_money = marketRecommend.getPayReturnMoney();
                }
                BigDecimal bonus = active_customer.getBonus().add(return_money);
                active_customer.setBonus(bonus);
            }
        }
    }

    public void returnSendMoney(int cuId){

    }
}