package com.dyl.sell.dto;

import lombok.Data;

@Data
public class IndexChart {
    /**
     * 统计图的横坐标
     */
    private Object[] xpos;
    /**
     * 统计图的纵坐标
     */
    private Object[] ypos;
}
