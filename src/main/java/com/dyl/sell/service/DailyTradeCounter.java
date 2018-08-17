package com.dyl.sell.service;

import com.dyl.sell.bean.RedisTemplateBean;
import org.springframework.data.redis.core.RedisTemplate;

public class DailyTradeCounter {
    private static int grossTrade = 0;
    private static final RedisTemplate redisTemplate = RedisTemplateBean.getRedisTemplate();

    public static synchronized void count() {
        grossTrade++;
        redisTemplate.opsForValue().set("count:dailyTrade",grossTrade);
    }

    public static int getGrossTrade() {
        return grossTrade;
    }

    public static void clear() {
        grossTrade = 0;
        redisTemplate.opsForValue().set("count:dailyTrade",grossTrade);
    }

    public static void restore() {
        grossTrade += (int) redisTemplate.opsForValue().get("count:dailyTrade");
        redisTemplate.opsForValue().set("count:dailyTrade",grossTrade);
    }
}
