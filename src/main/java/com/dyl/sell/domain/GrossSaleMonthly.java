package com.dyl.sell.domain;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * @author tldyl
 * @since 2018-8-17
 *
 * 月销售总额统计表
 */
@Entity
@Data
public class GrossSaleMonthly {
    /**
     * 日期
     */
    @Id
    private String month;
    /**
     * 月销售总额
     */
    private Double amount;
}
