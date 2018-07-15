package com.dyl.sell.service;

import com.dyl.sell.bean.RedisTemplateBean;
import com.dyl.sell.enums.RandomStringGenerateComponentOptions;
import com.dyl.sell.properties.StockProperties;
import org.springframework.data.redis.core.RedisTemplate;

@SuppressWarnings({"ConstantConditions", "unchecked"})
public class AccessTokenGenerator {
    private static RedisTemplate redisTemplate = RedisTemplateBean.getRedisTemplate();
    public static String generate(String username) {
        StockProperties stockProperties = new StockProperties();
        String accessToken;
        if (redisTemplate.opsForValue().get("accessToken:"+username) != null) { //如果之前的accessToken未过期，则替换为一个新的
            redisTemplate.delete("accessToken:"+redisTemplate.opsForValue().get("accessToken:"+username));
            redisTemplate.delete("accessToken:"+username);
        }
        accessToken = RandomStringGenerator.generate(32, RandomStringGenerateComponentOptions.ALL.getCode());
        redisTemplate.opsForValue().set("accessToken:"+accessToken,username);
        redisTemplate.opsForValue().set("accessToken:"+username,accessToken);
        redisTemplate.expire("accessToken:"+accessToken,
                stockProperties.getAccessTokenProperties().getExpiredIn(),
                stockProperties.getAccessTokenProperties().getTimeUnit() //TimeUnit指的是时间单位
        );
        redisTemplate.expire("accessToken:"+username,
                stockProperties.getAccessTokenProperties().getExpiredIn(),
                stockProperties.getAccessTokenProperties().getTimeUnit() //TimeUnit指的是时间单位
        );
        return accessToken;
    }
}
