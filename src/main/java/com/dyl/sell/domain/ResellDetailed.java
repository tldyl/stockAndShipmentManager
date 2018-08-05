package com.dyl.sell.domain;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * @author tldyl
 * @since 2018-8-5
 *
 * 销售退货明细表
 */
@Entity
@Data
public class ResellDetailed {
    /**
     * 销售单编号
     */
    private String billCode;
    /**
     * 商品编号
     */
    @Id
    private String tradeCode;
    /**
     * 商品名称
     */
    private String fullName;
    /**
     * 商品规格
     */
    private String standard;
    /**
     * 商品类型
     */
    private String type;
    /**
     * 商品产地
     */
    private String produce;
    /**
     * 商品单位
     */
    private String unit;
    /**
     * 商品数量
     */
    private Integer amount;
    /**
     * 商品单价
     */
    private Double price;
    /**
     * 商品总价
     */
    private Double totalPrice;
}