package com.dyl.sell.dto;

import lombok.Data;

/**
 * @author tldyl
 * @since 2018-7-4
 * 数据传输对象，前端向后台发送查找员工的请求时，查找规则就由此格式发送过来
 * 与domain中的User对象唯一不同的地方是它没有password这个属性。
 */
@Data
public class ClientUser {
    private Integer id;
    private String username;
    private Integer departmentId;
    private String sex;
    private String phoneNumber;
    private String charactor;
    private Integer status;
}
