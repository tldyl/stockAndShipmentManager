package com.dyl.sell.domain;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

@Data
@Entity
public class UserSignIn {
    /**
     * 用户id
     */
    @Id
    private Integer uid;
    /**
     * 签到日期
     */
    private String signInDate;
    /**
     * 当日签到状态，0成功签到，1迟到，2未签到
     */
    private String signInStatus;
}
