package com.dyl.sell.domain;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * @author tldyl
 * @since 2018-8-5
 *
 * 库存商品信息表
 */
@Entity
@Data
public class Stock {
    /**
     * 商品编号
     */
    @Id
    private String tradeCode;
    /**
     *商品名称
     */
    private String fullName;
    /**
     *商品简称
     */
    private String name;
    /**
     *商品型号
     */
    private String type;
    /**
     *商品规格
     */
    private String standard;
    /**
     *商品单位
     */
    private String unit;
    /**
     *商品产地
     */
    private String produce;
    /**
     *库存数量
     */
    private Integer amount;
    /**
     *最后一次进货价格
     */
    private Double lastPrice;
    /**
     *加权平均价
     */
    private Double averagePrice;
    /**
     *最后一次销售价格
     */
    private Double lastSellPrice;
    /**
     *盘点数量
     */
    private Double stockCheck;
    /**
     *库存上限
     */
    private Double upperLimit;
    /**
     *库存下限
     */
    private Double lowerLimit;
    /**
     *商品供货信息
     */
    private String provideInfo;
    /**
     *备注信息
     */
    private String comment;
    /**
     *拼音简码
     */
    private String spell;
}