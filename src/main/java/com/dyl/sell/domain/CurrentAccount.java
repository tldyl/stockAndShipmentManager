package com.dyl.sell.domain;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Date;

/**
 * @author tldyl
 * @since 2018-8-5
 *
 * 往来对账明细表
 */
@Entity
@Data
public class CurrentAccount {
    /**
     * 进货日期
     */
    public Date billDate;
    /**
     * 进货单编号
     */
    @Id
    public String billCode;
    /**
     * 摘要
     */
    public String summary;
    /**
     * 本期应付金额
     */
    public Double addGathering;
    /**
     * 本期新增应付金额
     */
    public Double factAddFee;
    /**
     * 实付金额
     */
    public Double factFee;
    /**
     * 应付款余额
     */
    public Double reduceGathering;
    /**
     * 核对情况
     */
    public Integer balance;
    /**
     * 往来单位全称
     */
    public String units;
}