package com.dyl.sell.enums;

public enum ErrorEnums {
    UNKNOWN_ERROR(-1,"未知错误"),
    SUCCESS(0,"成功"),
    USERNAME_NOT_EXIST(1,"用户名不存在"),
    WRONG_PASSWORD(2,"密码错误"),
    NO_AUTHORITY(3,"无权限"),
    SEARCH_ARGUMENT_ERROR(4, "搜索参数错误。"),
    TODO(5,"这个功能还没做完")
    ;
    private int code;
    private String msg;

    ErrorEnums(int code,String msg) {
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
