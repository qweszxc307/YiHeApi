package org.crown.common.utils;

import org.apache.commons.lang.StringUtils;

import java.lang.reflect.Field;

public class ObjectUtils {
    public static boolean objectNull(Object object) {
        if (null == object) {
            return true;
        }
        try {

            for (Field f : object.getClass().getDeclaredFields()) {

                f.setAccessible(true);

                System.out.print(f.getName() + ":");

                System.out.println(f.get(object));

                if (f.get(object) != null && StringUtils.isNotBlank(f.get(object).toString())) {
                    return false;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }
}
