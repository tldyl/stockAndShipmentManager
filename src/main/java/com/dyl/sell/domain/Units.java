package com.dyl.sell.domain;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * @author tldyl
 * @since 2018-8-5
 *
 * 往来单位信息表
 */
@Entity
@Data
public class Units {
    /**
     * 单位编号
     */
    private Integer unitCode;
    /**
     * 单位全称
     */
    @Id
    private String fullName;
    /**
     * 单位简称
     */
    private String name;
    /**
     * 传真
     */
    private String fax;
    /**
     * 电话
     */
    private String telephoneNumber;
    /**
     * 联系人
     */
    private String linkMan;
    /**
     * 单位地址
     */
    private String address;
    /**
     * 单位银行账户号码
     */
    private String accounts;
    /**
     * 拼音简码
     */
    private String spell;
}