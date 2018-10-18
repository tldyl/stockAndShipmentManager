package com.dyl.sell.domain;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Date;

/**
 * @author tldyl
 * @since 2018-8-5
 *
 * 进货退货明细表
 */
@Entity
@Data
public class RewarehouseDetailed {
    /**
     * 进货单编号
     */
    private String billCode;
    /**
     * 退货日期
     */
    private Date billDate;
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
     * 商品类型
     */
    private String type;
    /**
     * 商品规格
     */
    private String standard;
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
    private Double amount;
    /**
     * 商品单价
     */
    private Double price;
    /**
     * 商品总价
     */
    private Double totalPrice;
}