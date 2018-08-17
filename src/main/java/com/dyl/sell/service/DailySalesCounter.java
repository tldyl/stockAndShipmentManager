package com.dyl.sell.service;

import com.dyl.sell.bean.RedisTemplateBean;
import org.springframework.data.redis.core.RedisTemplate;

/**
 * @author tldyl
 * @since 2018-8-16
 *
 * 日销售总额(不含退款)计数器
 */
public class DailySalesCounter {

    private static double grossSales = 0.0;
    private static final RedisTemplate redisTemplate = RedisTemplateBean.getRedisTemplate();

    public static synchronized void count(double amount) {
        grossSales += amount;
        redisTemplate.opsForValue().set("count:dailySale",grossSales);
    }

    public static Double getGrossSales() {
        return grossSales;
    }

    public static void clear() {
        grossSales = 0.0;
        redisTemplate.opsForValue().set("count:dailySale",grossSales);
    }

    public static void restore() {
        grossSales += (double) redisTemplate.opsForValue().get("count:dailySale");
        redisTemplate.opsForValue().set("count:dailySale",grossSales);
    }
}
