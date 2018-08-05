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
 * 进货主表
 */

@Entity
@Data
public class WarehouseMain {
    @Id
    @GeneratedValue
    private Integer id;
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
}
