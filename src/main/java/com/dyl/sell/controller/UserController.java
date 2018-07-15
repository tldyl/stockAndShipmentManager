package com.dyl.sell.controller;

import com.dyl.sell.bean.RedisTemplateBean;
import com.dyl.sell.domain.User;
import com.dyl.sell.dto.DataToClientContainer;
import com.dyl.sell.enums.ErrorEnums;
import com.dyl.sell.repository.UserRepository;
import com.dyl.sell.service.AccessTokenGenerator;
import com.dyl.sell.service.OperationAuthorityCheck;
import com.dyl.sell.util.DataToClient;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author tldyl
 * @since 2018-6-15
 *
 * 用户账号管理相关的Controller
 */
@SuppressWarnings("ConstantConditions")
@Controller
@Component
public class UserController {
    private final UserRepository userRepository;
    private static RedisTemplate redisTemplate = RedisTemplateBean.getRedisTemplate();
    private static final Logger logger = LoggerFactory.getLogger(UserController.class);

    @Autowired
    public UserController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    /**
     * 用户登录验证
     * @param username 用户名
     * @param password 密码
     * @return 返回信息，如果成功则同时返回accessToken
     */
    @PostMapping("/authentication/form")
    @ResponseBody
    public DataToClientContainer authenticate(String username, String password) {
        logger.info("Authenticate method.");
        PasswordEncoder encoder = new BCryptPasswordEncoder();
        User user = userRepository.findByUsername(username);
        String accessToken;
        if (user == null) {
            return DataToClient.send(ErrorEnums.USERNAME_NOT_EXIST.getCode(),ErrorEnums.USERNAME_NOT_EXIST.getMsg(),null);
        }
        if (encoder.matches(password,user.getPassword())) {
            accessToken = AccessTokenGenerator.generate(username); //生成accessToken的同时把它保存到redis里面，并设置accessToken的过期时间
            return DataToClient.send(ErrorEnums.SUCCESS.getCode(),ErrorEnums.SUCCESS.getMsg(),accessToken); //返回成功信息和accessToken
        }
        return DataToClient.send(ErrorEnums.WRONG_PASSWORD.getCode(),ErrorEnums.WRONG_PASSWORD.getMsg(),null);
    }

    /**
     * 用户进入主页面权限确认
     * @param accessToken 需要提供accessToken才可以访问这个页面
     * @return 如果提供了有效的accessToken则会跳转到主页面，否则跳转到403错误页面
     */
    @GetMapping("/signIn")
    public String signIn(@RequestParam(required = false) String accessToken) {
        if (OperationAuthorityCheck.hasAuthority(accessToken,null)) {
            logger.info(redisTemplate.opsForValue().get("accessToken:"+accessToken) + "进入了主页。");
            return "/index.html";
        }
        return "/403.html";
    }

    /**
     * 返回当前用户信息
     * @param accessToken 登录成功后系统发放的令牌
     * @return 当前用户信息
     */
    @GetMapping("/me")
    @ResponseBody
    public DataToClientContainer getMe(@RequestParam(required = false) String accessToken) {
        if (OperationAuthorityCheck.hasAuthority(accessToken,null)) {
            User user = userRepository.findByUsername((String) redisTemplate.opsForValue().get("accessToken:" + accessToken));
            if (user == null) {
                return DataToClient.send(ErrorEnums.UNKNOWN_ERROR.getCode(), "无效的accessToken。", null);
            }
            return DataToClient.send(ErrorEnums.SUCCESS.getCode(), ErrorEnums.SUCCESS.getMsg(), user);
        }
        return DataToClient.send(ErrorEnums.NO_AUTHORITY.getCode(), ErrorEnums.NO_AUTHORITY.getMsg(), null);
    }
}
