package com.dyl.sell.util;

import com.dyl.sell.dto.DataToClientContainer;

/**
 * @author tldyl
 * @since 2018-6-15
 * 这是一个工具类，作用是将数据包装成一个数据传输对象（Data Transfer Object,DTO）
 * 以方便返回给前端
 */
public class DataToClient {
    public static DataToClientContainer send(Integer code, String msg, Object data) {
        DataToClientContainer container = new DataToClientContainer();
        container.setCode(code);
        container.setMsg(msg);
        container.setData(data);
        return container;
    }
}
