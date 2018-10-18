package com.dyl.sell.util;

import org.junit.Test;

public class TimerUtilTest {
    @Test
    public void getTomorrowZeroSeconds() {
        System.out.println(TimerUtil.getTomorrowZeroSeconds());
        try {
            Thread.sleep(2000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        System.out.println(TimerUtil.getTomorrowZeroSeconds());
    }

    @Test
    public void getCurrentYearMonthDayString() {
        String date = TimerUtil.getCurrentYearMonthDayString("-");
        System.out.println(date.substring(5,7));
    }

    @Test
    public void toSqlDate() {
        System.out.println(TimerUtil.toSqlDate("2018","6","6"));
    }
}