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
 * 销售主表
 */
@Entity
@Data
public class SellMain {
    @Id
    @GeneratedValue
    private Integer id;
    /**
     * 销售日期
     */
    private Date billDate;
    /**
     * 销售单编号
     */
    private String billCode;
    /**
     * 经手人
     */
    private String handle;
    /**
     * 摘要
     */
    private String summary;
    /**
     * 应收金额
     */
    private Double fullPayment;
    /**
     * 实收金额
     */
    private Double payment;
}