package com.dyl.sell.enums;

/**
 * @author tldyl
 * @since 2018-7-2
 * 用户的所有操作对应的操作码
 * 编码规则：1xx 查询权限
 *         2xx 编辑权限
 */
public enum UserOperationCode {
    USER_COMPILE(200,"员工的增删改操作"),
    MANAGER_COMPILE(201,"管理层的增删改操作"),
    WAREHOUSE_COMPILE(202,"进货信息的增删改操作"),
    ADMINISTRATOR(99,"超级管理员权限，拥有一切权限"),
    ENTER_USER_MANAGEMENT_PAGE(100,"进入人员管理页面及员工的查询操作"),
    ENTER_DATA_CENTRE_PAGE(101,"进入数据分析中心的权限")
    ;
    private int code;
    private String msg;

    UserOperationCode(int code,String msg) {
        this.code = code;
        this.msg = msg;
    }

    public int getCode() {
        return code;
    }
    public void setCode(int code) {
        this.code = code;
    }
    public String getMsg() {
        return msg;
    }
    public void setMsg(String msg) {
        this.msg = msg;
    }
}
