package com.dyl.sell.bean;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.connection.jedis.JedisConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;

/**
 * @author tldyl
 * @since 2018-6-15
 *
 * RedisTemplate的一个bean，调用它的getRedisTemplate方法就可以使用redisTemplate了
 */
@Component
public class RedisTemplateBean {
    private static final RedisTemplate redisTemplate = new RedisTemplate();
    private static final RedisConnectionFactory redisConnectionFactory = new JedisConnectionFactory();
    private static final Logger logger = LoggerFactory.getLogger(RedisTemplateBean.class);
    static {
        logger.info("initialization started");
        redisTemplate.setConnectionFactory(redisConnectionFactory);
        redisTemplate.afterPropertiesSet();
        logger.info("initialization completed");
    }
    public static RedisTemplate getRedisTemplate() {
        return redisTemplate;
    }
}
