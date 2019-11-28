package org.crown.common.utils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

/**
 * ykMa
 */
public class CustomerUtils {
    public static String getCustomerNum() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd");
        Date now = new Date();
        Random r = new Random();
        return  (simpleDateFormat.format(now) + "").substring(2) + (now.getTime() + "").substring(4, 10) + (r.nextInt(899) + 100 + "");

    }
    public static String getOrderNum() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd");
        Random r = new Random();
        return "YH"+(simpleDateFormat.format(new Date()) + "").substring(2) + (new Date().getTime() + "").substring(4, 11) + (r.nextInt(8999) + 1000 + "");
    }



}
