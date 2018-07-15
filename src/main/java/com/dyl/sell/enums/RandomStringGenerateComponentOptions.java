package com.dyl.sell.enums;

public enum RandomStringGenerateComponentOptions {
    LOWERCASE_LETTER(1),
    UPPERCASE_LETTER(2),
    NUMBER(4),
    ALL(7)
    ;
    private int code;

    RandomStringGenerateComponentOptions(int code) {
        this.code = code;
    }

    public int getCode() {
        return code;
    }
}
