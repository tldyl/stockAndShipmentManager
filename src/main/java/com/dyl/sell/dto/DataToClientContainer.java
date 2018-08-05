package com.dyl.sell.dto;

import lombok.Data;

/**
 * @author tldyl
 * @since 2018-6-15
 * 数据传输对象，主要包装准备返回给前端的数据。
 */
@Data
public class DataToClientContainer {
    private Integer code;
    private String msg;
    private Object data;
}
