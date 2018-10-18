package com.dyl.sell.dto;

import lombok.Data;

import java.sql.Date;

@Data
public class ClientWarehouseDetailed {
    /**
     * 进货日期
     */
    private Date billDate;
    /**
     * 进货单编号
     */
    private String billCode;
    /**
     * 供应商名称
     */
    private String units;
    /**
     * 经手人
     */
    private String handle;
    /**
     * 摘要
     */
    private String summary;
    /**
     * 应付金额
     */
    private Double fullPayment;
    /**
     * 实付金额
     */
    private Double payment;
    /**
     * 商品编号
     */
    private String tradeCode;
    /**
     * 商品名称
     */
    private String fullName;
    /**
     * 商品型号
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
     * 商品进价
     */
    private Double price;
    /**
     * 进货总金额
     */
    private Double totalPrice;
}
