package com.dyl.sell.domain;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * @author tldyl
 * @since 2018-8-17
 *
 * 月交易笔数统计表
 */
@Entity
@Data
public class GrossTradeMonthly {
    /**
     * 日期
     */
    @Id
    private String month;
    /**
     * 月交易笔数
     */
    private Integer amount;
}
