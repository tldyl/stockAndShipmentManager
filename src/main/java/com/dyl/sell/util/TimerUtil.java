package com.dyl.sell.util;

import java.util.Calendar;

/**
 * @author 杨_飞
 * @since 2018-8-16
 *
 * 获取当前距午夜秒数
 */

public class TimerUtil {
    public static long getTomorrowZeroSeconds() {
        long current = System.currentTimeMillis();// 当前时间毫秒数
        Calendar calendar = Calendar.getInstance();
        calendar.add(Calendar.DAY_OF_MONTH, 1);
        calendar.set(Calendar.HOUR_OF_DAY, 0);
        calendar.set(Calendar.MINUTE, 0);
        calendar.set(Calendar.SECOND, 0);
        calendar.set(Calendar.MILLISECOND, 0);
        long tomorrowZero = calendar.getTimeInMillis();
        return (tomorrowZero- current) / 1000;
    }

    public static String getCurrentYearMonthDayString(String separator) {
        Calendar calendar = Calendar.getInstance();
        String y = Integer.toString(calendar.get(Calendar.YEAR));
        String m = Integer.toString(calendar.get(Calendar.MONTH) + 1);
        String d = Integer.toString(calendar.get(Calendar.DATE));
        if (m.length() <= 1) {
            m = "0" + m;
        }
        return y + separator + m + separator + d;
    }
}
