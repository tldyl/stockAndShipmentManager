package com.dyl.sell.service;

import com.dyl.sell.bean.RedisTemplateBean;
import com.dyl.sell.domain.SellDetailed;
import com.dyl.sell.dto.Good;
import com.dyl.sell.repository.SellDetailedRepository;
import org.springframework.data.redis.core.RedisTemplate;

import java.util.HashSet;
import java.util.Set;

/**
 * @author tldyl
 * @since 2018-8-18
 *
 * 记录各类商品的销售额(不含退货)等统计数据，记录将被写入redis.
 */
public class SellInfoRecorder {
    private static final RedisTemplate redisTemplate = RedisTemplateBean.getRedisTemplate();
    private static SellDetailedRepository sellDetailedRepository;
    private static Set<String> goodsList = new HashSet<>();

    public static synchronized void record(Good good) {
        SellDetailed sellDetailed = sellDetailedRepository.findByTradeCode(good.getTradeCode());
        Double price = sellDetailed.getPrice() * good.getNum();
        goodsList.add(sellDetailed.getType() + ":" + sellDetailed.getFullName());
        redisTemplate.opsForValue().set("count:dailySale:goodsList","");
        for (String k : goodsList) {
            redisTemplate.opsForValue().set("count:dailySale:goodsList",
                    redisTemplate.opsForValue().get("count:dailySale:goodsList") + k + ",");
        }
        if (redisTemplate.opsForValue().get("count:dailySale:" + sellDetailed.getType() + ":" + sellDetailed.getFullName()) == null) {
            redisTemplate.opsForValue().set("count:dailySale:" + sellDetailed.getType() + ":" + sellDetailed.getFullName(), 0.0);
        }
        redisTemplate.opsForValue().set("count:dailySale:" + sellDetailed.getType() + ":" + sellDetailed.getFullName(),
                (double)redisTemplate.opsForValue().get("count:dailySale:" + sellDetailed.getType() + ":" + sellDetailed.getFullName()) + price);
    }

    public static void setSellDetailedRepository(SellDetailedRepository sellDetailedRepository1) {
        sellDetailedRepository = sellDetailedRepository1;
    }
}
