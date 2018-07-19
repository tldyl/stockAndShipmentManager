package com.dyl.sell.service;

import com.dyl.sell.bean.RedisTemplateBean;
import com.dyl.sell.domain.User;
import com.dyl.sell.repository.CharactorAndAuthorityRepository;
import com.dyl.sell.repository.UserRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;

import java.util.HashSet;

/**
 * @author tldyl
 * @since 2018-7-2
 * 操作权限检查
 */
@Component
public class OperationAuthorityCheck {
    private static UserRepository userRepository;
    private static CharactorAndAuthorityRepository charactorAndAuthorityRepository;

    private static final RedisTemplate redisTemplate = RedisTemplateBean.getRedisTemplate();

    private static final Logger logger = LoggerFactory.getLogger(OperationAuthorityCheck.class);

    @Autowired
    public OperationAuthorityCheck(UserRepository userRepository, CharactorAndAuthorityRepository charactorAndAuthorityRepository) {
        OperationAuthorityCheck.userRepository = userRepository;
        OperationAuthorityCheck.charactorAndAuthorityRepository = charactorAndAuthorityRepository;
    }

    /**
     * @param accessToken 用户令牌，通过这个可以找到用户名
     * @param opcode 将要进行的操作(当不需要检测操作的时候填null就可以了)
     * @return 是否有进行该操作的权限
     */
    public static boolean hasAuthority(String accessToken,Integer opcode) {
        if (accessToken == null) {
            return false;
        }
        logger.info("accessToken:{}",accessToken);
        String username = (String)redisTemplate.opsForValue().get("accessToken:"+accessToken);
        logger.info("username:{}",username);
        User user = userRepository.findByUsername(username);
        if (user == null) {
            logger.error("此用户不存在！");
            return false;
        }
        if (opcode == null) {
            return true;
        }
        HashSet<Integer> authorities = new HashSet<>();
        for (String charactor : user.getCharactor().split(",")) {
            String charactorAuthorities = charactorAndAuthorityRepository.findByCharactor(charactor).getHasAuthority();
            for (String charactorAuthority : charactorAuthorities.split(",")) {
                authorities.add(Integer.parseInt(charactorAuthority));
            }
        }
        for (Integer authority : authorities) {
            if (authority.intValue() == opcode || authority == 99) {
                return true;
            }
        }
        return false;
    }

    public static boolean hasHigherLevel(User you,User target) {
        String[] charactors = you.getCharactor().split(",");
        HashSet<Integer> levels = new HashSet<>();
        for (String charactor : charactors) {
            levels.add(charactorAndAuthorityRepository.findByCharactor(charactor).getLevel());
        }
        int yourMaxLevel = Integer.MIN_VALUE;
        for (Integer value : levels) {
            if (value > yourMaxLevel) {
                yourMaxLevel = value;
            }
        }
        charactors = target.getCharactor().split(",");
        levels = new HashSet<>();
        for (String charactor : charactors) {
            levels.add(charactorAndAuthorityRepository.findByCharactor(charactor).getLevel());
        }
        int targetMaxLevel = Integer.MIN_VALUE;
        for (Integer value : levels) {
            if (value > yourMaxLevel) {
                targetMaxLevel = value;
            }
        }
        return yourMaxLevel > targetMaxLevel;
    }
}
