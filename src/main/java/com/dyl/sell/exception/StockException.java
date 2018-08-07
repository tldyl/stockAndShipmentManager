package com.dyl.sell.exception;

public class StockException extends RuntimeException {
    private int code;

    public StockException(int code, String msg) {
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
