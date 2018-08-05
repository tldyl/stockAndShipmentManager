package com.dyl.sell.service;

import com.dyl.sell.domain.User;
import com.dyl.sell.dto.ClientUser;
import com.dyl.sell.enums.ErrorEnums;
import com.dyl.sell.exception.SearchArgumentException;
import com.dyl.sell.repository.UserRepository;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

/**
 * @author tldyl
 * @since 2018-7-4
 *
 * 用户的查找服务
 */

@Component
public class FindEmployee {
    /**
     * 通过给定的规则查找匹配的用户
     * @param role 具体的规则
     * @return 所有匹配的用户
     * @throws SearchArgumentException 当传入的role属性格式不正确时，就会抛出此异常
     */
    public static List<User> find(ClientUser role, UserRepository userRepository) throws SearchArgumentException {
        List<User> allUsers = userRepository.findAll();
        List<User> result = new ArrayList<>();
        boolean skipped = true;
        if (role.getId() == null) {
            throw new SearchArgumentException(ErrorEnums.SEARCH_ARGUMENT_ERROR.getCode(),
                    ErrorEnums.SEARCH_ARGUMENT_ERROR.getMsg() + "工号不能为空！如没有要求应该填-1");
        }
        if (role.getUsername() == null) {
            throw new SearchArgumentException(ErrorEnums.SEARCH_ARGUMENT_ERROR.getCode(),
                    ErrorEnums.SEARCH_ARGUMENT_ERROR.getMsg() + "用户名不能为空！如没有要求应该填'-'");
        }
        if (role.getDepartmentId() == null) {
            throw new SearchArgumentException(ErrorEnums.SEARCH_ARGUMENT_ERROR.getCode(),
                    ErrorEnums.SEARCH_ARGUMENT_ERROR.getMsg() + "部门编号不能为空！如没有要求应该填-1");
        }
        if (role.getSex() == null) {
            throw new SearchArgumentException(ErrorEnums.SEARCH_ARGUMENT_ERROR.getCode(),
                    ErrorEnums.SEARCH_ARGUMENT_ERROR.getMsg() + "性别不能为空！如没有要求应该填'-'");
        }
        if (role.getPhoneNumber() == null) {
            throw new SearchArgumentException(ErrorEnums.SEARCH_ARGUMENT_ERROR.getCode(),
                    ErrorEnums.SEARCH_ARGUMENT_ERROR.getMsg() + "联系电话不能为空！如没有要求应该填'-'");
        }
        if (role.getCharactor() == null) {
            throw new SearchArgumentException(ErrorEnums.SEARCH_ARGUMENT_ERROR.getCode(),
                    ErrorEnums.SEARCH_ARGUMENT_ERROR.getMsg() + "用户角色不能为空！如没有要求应该填'-'");
        }
        if (role.getDepartmentId() == null) {
            throw new SearchArgumentException(ErrorEnums.SEARCH_ARGUMENT_ERROR.getCode(),
                    ErrorEnums.SEARCH_ARGUMENT_ERROR.getMsg() + "员工状态不能为空！如没有要求应该填-1");
        }
        if (role.getId() != -1) {
            result.add(userRepository.findByUid(role.getId()));
            return result;
        }
        if (!"-".equals(role.getUsername())) {
            result.addAll(userRepository.findByUsernameContaining(role.getUsername()));
            skipped = false;
        }
        if (role.getDepartmentId() != -1) {
            if (skipped) {
                for (User user : allUsers) {
                    if (user.getDepartmentId().intValue() == role.getDepartmentId()) {
                        result.add(user);
                    }
                }
            } else {
                for (User user : result) {
                    if (user.getDepartmentId().intValue() != role.getDepartmentId()) {
                        result.remove(user);
                    }
                }
            }
            skipped = false;
        }
        if (!"-".equals(role.getSex())) {
            if (skipped) {
                for (User user : allUsers) {
                    if (user.getSex().equals(role.getSex())) {
                        result.add(user);
                    }
                }
            } else {
                for (User user : result) {
                    if (!user.getSex().equals(role.getSex())) {
                        result.remove(user);
                    }
                }
            }
            skipped = false;
        }
        if (!"-".equals(role.getPhoneNumber())) {
            if (skipped) {
                for (User user : allUsers) {
                    if (user.getPhoneNumber().contains(role.getPhoneNumber())) {
                        result.add(user);
                    }
                }
            } else {
                for (User user : result) {
                    if (!user.getPhoneNumber().contains(role.getPhoneNumber())) {
                        result.remove(user);
                    }
                }
            }
            skipped = false;
        }
        if (!"-".equals(role.getCharactor()) || !"".equals(role.getCharactor())) {
            if (skipped) {
                for (User user : allUsers) {
                    int matches = 0;
                    for (String charactor : role.getCharactor().split(",")) {
                        if (user.getCharactor().contains(charactor)) {
                            matches++;
                        }
                    }
                    if (matches == role.getCharactor().split(",").length) {
                        result.add(user);
                    }
                }
            } else {
                for (User user : result) {
                    int matches = 0;
                    for (String charactor : role.getCharactor().split(",")) {
                        if (user.getCharactor().contains(charactor)) {
                            matches++;
                        }
                    }
                    if (matches != role.getCharactor().split(",").length) {
                        result.remove(user);
                    }
                }
            }
            skipped = false;
        }
        if (role.getStatus() != -1) {
            if (skipped) {
                for (User user : allUsers) {
                    if (user.getStatus().intValue() == role.getStatus()) {
                        result.add(user);
                    }
                }
            } else {
                for (User user : result) {
                    if (user.getStatus().intValue() != role.getStatus()) {
                        result.remove(user);
                    }
                }
            }
            skipped = false;
        }
        if (skipped) {
            return allUsers;
        } else {
            return result;
        }
    }
}
