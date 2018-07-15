package com.dyl.sell.domain;

import lombok.Data;
import org.hibernate.validator.constraints.UniqueElements;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 * @author tldyl
 * @since 2018-6-15
 *
 * 用户表
 */
@Entity
@Data
public class User {
    /**
     * 工号，是一个账号的唯一标识，也是数据库User表中的主键.
     */
    @Id
    @GeneratedValue
    private Integer uid;
    /**
     * 用户名，也是用户登录时使用的账号名，因此不能重复.
     */
    @UniqueElements
    private String username;
    /**
     * 密码，存放在数据库里的密码是加密过的.
     */
    private String password;
    /**
     * 所属部门的编号，若部门有变动不需要修改这个字段，只有这个用户被调往其它部门时才需要修改.
     */
    private Integer departmentId;
    /**
     * 员工性别，0为男，1为女，默认为0
     */
    private String sex = "0";
    /**
     * 联系电话
     */
    private String phoneNumber;
    /**
     * 这个用户所扮演的角色，默认为员工(employee)，若同时扮演多个角色，则角色之间用逗号分隔开.
     */
    private String charactor;
    /**
     * 员工所属的状态，默认为”在职“=0
     */
    private Integer status = 0;
}