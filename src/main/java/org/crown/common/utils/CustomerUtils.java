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
        int i1 = r.nextInt(99) + 100;


        return  (simpleDateFormat.format(now) + "").substring(2) + (now.getTime() + "").substring(4, 10) + (r.nextInt(899) + 100 + "");

    }
}
