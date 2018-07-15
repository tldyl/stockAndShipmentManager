package com.dyl.sell.util;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.IOException;

public class JsonUtil {
    private static ObjectMapper objectMapper;

    static {
        objectMapper = new ObjectMapper();
    }

    /**
     * 对象转json字符串
     * @param value 对象
     * @return    json字符串
     * @throws JsonProcessingException
     */
    public static String objectToJsonStr(Object value) throws JsonProcessingException {
        return objectMapper.writeValueAsString(value);
    }

    /**
     * json字符串转对象
     * @param content  json字符串
     * @param valueType  对象类型
     * @return   对象
     * @throws IOException
     */
    public static <T> T objectFromJsonStr(String content,Class<T> valueType) throws IOException {
        return objectMapper.readValue(content, valueType);
    };
}
