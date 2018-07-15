package com.dyl.sell.service;

import com.dyl.sell.bean.RedisTemplateBean;
import org.junit.Test;
import org.springframework.data.redis.core.RedisTemplate;

import static org.junit.Assert.*;

public class OperationAuthorityCheckTest {

    @Test
    public void hasAuthority() {
        final RedisTemplate redisTemplate = RedisTemplateBean.getRedisTemplate();
        String username = (String)redisTemplate.opsForValue().get("accessToken:87mA5FBfgQXV2Evl60HG1C9W06KR6eL7");
        System.out.println(username);
    }
}