package com.dyl.sell.dto;

/**
 * @author tldyl
 * @since 2018-6-15
 * 数据传输对象，主要包装准备返回给前端的数据。
 */
public class DataToClientContainer {
    private Integer code;
    private String msg;
    private Object data;

    public Integer getCode() {
        return code;
    }
    public void setCode(Integer code) {
        this.code = code;
    }
    public String getMsg() {
        return msg;
    }
    public void setMsg(String msg) {
        this.msg = msg;
    }
    public Object getData() {
        return data;
    }
    public void setData(Object data) {
        this.data = data;
    }
}
