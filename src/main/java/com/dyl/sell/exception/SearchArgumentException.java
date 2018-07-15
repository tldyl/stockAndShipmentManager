package com.dyl.sell.exception;

public class SearchArgumentException extends Exception {
    private int code;

    public SearchArgumentException(int code,String msg) {
        super(msg);
        this.code = code;
    }

    public int getCode() {
        return code;
    }
    public void setCode(int code) {
        this.code = code;
    }
}
