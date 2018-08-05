package com.dyl.sell.domain;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.sql.Date;

/**
 * @author tldyl
 * @since 2018-8-5
 *
 * 进货退货主表
 */
@Entity
@Data
public class RewarehouseMain {
    @Id
    @GeneratedValue
    private Integer id;
    /**
     * 退货日期
     */
    private Date billDate;
    /**
     * 销售单编号
     */
    private String billCode;
    /**
     * 商品单位
     */
    private String unit;
    /**
     * 经手人
     */
    private String handle;
    /**
     * 摘要
     */
    private String summary;
    /**
     * 应退金额
     */
    private Double fullPayment;
    /**
     * 实退金额
     */
    private Double payment;
}