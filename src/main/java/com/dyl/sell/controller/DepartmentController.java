package com.dyl.sell.controller;

import com.dyl.sell.bean.RedisTemplateBean;
import com.dyl.sell.domain.Department;
import com.dyl.sell.domain.User;
import com.dyl.sell.dto.ClientUser;
import com.dyl.sell.dto.DataToClientContainer;
import com.dyl.sell.enums.ErrorEnums;
import com.dyl.sell.enums.UserOperationCode;
import com.dyl.sell.exception.SearchArgumentException;
import com.dyl.sell.repository.CharactorAndAuthorityRepository;
import com.dyl.sell.repository.DepartmentRepository;
import com.dyl.sell.repository.UserRepository;
import com.dyl.sell.service.FindEmployee;
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

import java.util.List;

/**
 * @author tldyl
 * @since 2018-7-15
 *
 * 部门管理相关的controller
 */
@Controller
@Component
public class DepartmentController {
    private static RedisTemplate redisTemplate = RedisTemplateBean.getRedisTemplate();
    private static final Logger logger = LoggerFactory.getLogger(UserController.class);
    private final UserRepository userRepository;
    private final DepartmentRepository departmentRepository;

    @Autowired
    public DepartmentController(UserRepository userRepository, DepartmentRepository departmentRepository) {
        this.userRepository = userRepository;
        this.departmentRepository = departmentRepository;
    }

    /**
     * 用户进入部门管理页面权限确认
     * @param accessToken 需要提供accessToken才可以访问这个页面
     * @return 如果提供了有效的accessToken则会跳转到部门管理页面，否则跳转到403错误页面
     */
    @GetMapping("/departmentManagement")
    public String departmentManagement(@RequestParam(required = false) String accessToken) {
        if (OperationAuthorityCheck.hasAuthority(accessToken,UserOperationCode.ENTER_USER_MANAGEMENT_PAGE.getCode())) {
            logger.info(redisTemplate.opsForValue().get("accessToken:"+accessToken) + "进入了部门管理页面。");
            return "/department.html";
        }
        return "/403.html";
    }

    /**
     * 获取部门列表
     * @param accessToken 需要提供accessToken才可以访问这个页面
     * @return 部门列表
     */
    @GetMapping("/departmentList")
    @ResponseBody
    public DataToClientContainer getAllDepartments(@RequestParam(required = false) String accessToken) {
        if (OperationAuthorityCheck.hasAuthority(accessToken,null)) {
            try {
                List<Department> departments = departmentRepository.findAll();
                return DataToClient.send(ErrorEnums.SUCCESS.getCode(),ErrorEnums.SUCCESS.getMsg(),departments);
            } catch (Exception e) {
                logger.error("获取部门列表时出错！错误信息：{}",e.getMessage());
                return DataToClient.send(ErrorEnums.UNKNOWN_ERROR.getCode(),e.getMessage(),null);
            }
        }
        return DataToClient.send(ErrorEnums.NO_AUTHORITY.getCode(), ErrorEnums.NO_AUTHORITY.getMsg(), null);
    }

    /**
     * 人员管理增删改查操作——增
     * 增加一个员工
     * @return 人员管理——增加人员后的操作结果
     */
    @PostMapping("/addEmployee")
    @ResponseBody
    public DataToClientContainer addEmployee(@RequestParam(required = false) String accessToken, User user) {
        if (OperationAuthorityCheck.hasAuthority(accessToken, UserOperationCode.USER_COMPILE.getCode())) {
            try {
                PasswordEncoder encoder = new BCryptPasswordEncoder();
                user.setPassword(encoder.encode(user.getPassword()));
                logger.info(redisTemplate.opsForValue().get("accessToken:"+accessToken) + "在数据库中新增了一个员工。");
                userRepository.save(user);
            } catch (Exception e) {
                logger.error("将用户信息存储至数据库时出错！请检查用户信息是否完整无误。");
                return DataToClient.send(ErrorEnums.UNKNOWN_ERROR.getCode(), "将用户信息存储至数据库时出错！请检查用户信息是否完整无误，若确认无误，请联系管理员。" , null);
            }
            return DataToClient.send(ErrorEnums.SUCCESS.getCode(), ErrorEnums.SUCCESS.getMsg(), null);
        }
        return DataToClient.send(ErrorEnums.NO_AUTHORITY.getCode(), ErrorEnums.NO_AUTHORITY.getMsg(), null);
    }

    /**
     * 人员管理增删改查操作——增
     * 增加多个员工
     * @return 人员管理——增加人员后的操作结果
     */
    @PostMapping("/addEmployee/batch")
    @ResponseBody
    public DataToClientContainer addEmployee(@RequestParam(required = false) String accessToken,List<User> users) {
        if (OperationAuthorityCheck.hasAuthority(accessToken, UserOperationCode.USER_COMPILE.getCode())) {
            Integer currentUserId = null;
            try {
                logger.info(redisTemplate.opsForValue().get("accessToken:"+accessToken) + "在数据库中新增了{}个员工。",users.size());
                PasswordEncoder encoder = new BCryptPasswordEncoder();
                for (User user : users) {
                    currentUserId = user.getUid();
                    user.setPassword(encoder.encode(user.getPassword()));
                    userRepository.save(user);
                }
            } catch (Exception e) {
                logger.error("将用户信息批量存储至数据库时出错！请检查用户信息是否完整无误。该用户的编号为：{}",currentUserId);
                return DataToClient.send(ErrorEnums.UNKNOWN_ERROR.getCode(), "将用户信息批量存储至数据库时出错！该用户的编号为：" + currentUserId + "请检查用户信息是否完整无误，若确认无误，请联系管理员。" , null);
            }
            return DataToClient.send(ErrorEnums.SUCCESS.getCode(), ErrorEnums.SUCCESS.getMsg(), null);
        }
        return DataToClient.send(ErrorEnums.NO_AUTHORITY.getCode(), ErrorEnums.NO_AUTHORITY.getMsg(), null);
    }

    /**
     * 人员管理增删改查操作——删
     * 通过员工的编号删除一个员工
     * @return 人员管理——删除人员后的操作结果
     */
    @PostMapping("/deleteEmployee")
    @ResponseBody
    public DataToClientContainer deleteEmployee(@RequestParam(required = false) String accessToken,Integer userId) {
        if (OperationAuthorityCheck.hasAuthority(accessToken, UserOperationCode.USER_COMPILE.getCode())) {
            try {
                User me = userRepository.findByUsername((String)redisTemplate.opsForValue().get("accessToken:"+accessToken));
                User target = userRepository.findByUid(userId);
                if (OperationAuthorityCheck.hasHigherLevel(me, target)) {
                    logger.info(me.getUsername() + "在数据库中删除了一个员工。");
                    userRepository.delete(userRepository.getOne(userId));
                    return DataToClient.send(ErrorEnums.SUCCESS.getCode(),ErrorEnums.SUCCESS.getMsg(),null);
                }
            } catch (Exception e) {
                logger.error("将用户从数据库中删除时出错！请检查用户信息是否完整无误。该用户的编号为：{}", userId);
                return DataToClient.send(ErrorEnums.UNKNOWN_ERROR.getCode(), "将用户从数据库中删除时出错！请检查用户信息是否完整无误，若确认无误，请联系管理员。" , null);
            }
        }
        return DataToClient.send(ErrorEnums.NO_AUTHORITY.getCode(), ErrorEnums.NO_AUTHORITY.getMsg(), null);
    }

    /**
     * 人员管理增删改查操作——删
     * 通过员工的编号删除多个员工
     * @return 人员管理——删除人员后的操作结果
     */
    @PostMapping("/deleteEmployee/batch")
    @ResponseBody
    public DataToClientContainer deleteEmployee(@RequestParam(required = false) String accessToken,List<Integer> users) {
        if (OperationAuthorityCheck.hasAuthority(accessToken, UserOperationCode.USER_COMPILE.getCode())) {
            Integer currentUserId = null;
            User me = userRepository.findByUsername((String)redisTemplate.opsForValue().get("accessToken:"+accessToken));
            try {
                for (Integer userId : users) {
                    currentUserId = userId;
                    User target = userRepository.getOne(userId);
                    if (OperationAuthorityCheck.hasHigherLevel(me, target)) {
                        userRepository.delete(target);
                        logger.info("成功删除用户:{}，操作人：{}",target.getUsername(),me.getUsername());
                    }
                }
            } catch (Exception e) {
                logger.error("将用户从数据库中批量删除时出错！请检查用户信息是否完整无误。该用户的编号为：{}", currentUserId);
                return DataToClient.send(ErrorEnums.UNKNOWN_ERROR.getCode(), "将用户从数据库中批量删除时出错！该用户的编号为：" + currentUserId + "请检查用户信息是否完整无误，若确认无误，请联系管理员。" , null);
            }
        }
        return DataToClient.send(ErrorEnums.NO_AUTHORITY.getCode(), ErrorEnums.NO_AUTHORITY.getMsg(), null);
    }

    /**
     * 人员管理增删改查操作——改
     * 修改一个员工的信息
     * @return 人员管理——修改人员信息后的操作结果
     */
    @PostMapping("/updateEmployee")
    @ResponseBody
    public DataToClientContainer updateEmployee(@RequestParam(required = false) String accessToken, User user) {
        if (OperationAuthorityCheck.hasAuthority(accessToken, UserOperationCode.USER_COMPILE.getCode())) {
            User me = userRepository.findByUsername((String)redisTemplate.opsForValue().get("accessToken:"+accessToken));
            try {
                if (OperationAuthorityCheck.hasHigherLevel(me, user)) {
                    User target = userRepository.findByUid(user.getUid());
                    user.setPassword(target.getPassword());
                    logger.info(me.getUsername() + "在数据库中修改了员工{}的信息。", user.getUid());
                    userRepository.save(user);
                    return DataToClient.send(ErrorEnums.SUCCESS.getCode(), ErrorEnums.SUCCESS.getMsg(), null);
                }
            } catch (Exception e) {
                logger.error("修改用户信息时出错！请检查用户信息是否完整无误。");
                return DataToClient.send(ErrorEnums.UNKNOWN_ERROR.getCode(), "修改用户信息时出错！请检查用户信息是否完整无误，若确认无误，请联系管理员。" , null);
            }
        }
        return DataToClient.send(ErrorEnums.NO_AUTHORITY.getCode(), ErrorEnums.NO_AUTHORITY.getMsg(), null);
    }

    /**
     * 人员管理增删改查操作——改
     * 修改多个员工的信息
     * @return 人员管理——修改人员信息后的操作结果
     */
    @PostMapping("/updateEmployee/batch")
    @ResponseBody
    public DataToClientContainer updateEmployee(@RequestParam(required = false) String accessToken, List<User> users) {
        if (OperationAuthorityCheck.hasAuthority(accessToken, UserOperationCode.USER_COMPILE.getCode())) {
            Integer currentUserId = null;
            User target;
            User me = userRepository.findByUsername((String)redisTemplate.opsForValue().get("accessToken:"+accessToken));
            try {
                for (User user : users) {
                    if (OperationAuthorityCheck.hasHigherLevel(me, user)) {
                        currentUserId = user.getUid();
                        target = userRepository.findByUid(currentUserId);
                        user.setPassword(target.getPassword());
                        userRepository.save(user);
                        logger.info("成功修改了用户{}的信息，操作人：{}",target.getUsername(),me.getUsername());
                    }
                }
            } catch (Exception e) {
                logger.error("批量修改用户信息时出错！请检查用户信息是否完整无误。该用户的编号为：{}", currentUserId);
                return DataToClient.send(ErrorEnums.UNKNOWN_ERROR.getCode(), "批量修改用户信息时出错！该用户的编号为：" + currentUserId + "请检查用户信息是否完整无误，若确认无误，请联系管理员。" , null);
            }
        }
        return DataToClient.send(ErrorEnums.NO_AUTHORITY.getCode(), ErrorEnums.NO_AUTHORITY.getMsg(), null);
    }

    /**
     * 人员管理增删改查操作——查
     * 查询多个员工的信息
     * @return 指定员工的信息
     */
    @PostMapping("/findEmployee")
    @ResponseBody
    public DataToClientContainer findEmployee(@RequestParam(required = false) String accessToken, ClientUser role) throws SearchArgumentException {
        if (OperationAuthorityCheck.hasAuthority(accessToken, null)) {
            List<User> result = FindEmployee.find(role);
            for (User user : result) {
                user.setPassword("");
            }
            return DataToClient.send(ErrorEnums.SUCCESS.getCode(),ErrorEnums.SUCCESS.getMsg(),result);
        }
        return DataToClient.send(ErrorEnums.NO_AUTHORITY.getCode(), ErrorEnums.NO_AUTHORITY.getMsg(), null);
    }
}
