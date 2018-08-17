package com.dyl.sell.domain;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * @author tldyl
 * @since 2018-8-17
 *
 * 日销售总额统计表
 */
@Entity
@Data
public class GrossSaleDaily {
    /**
     * 日期
     */
    @Id
    private String day;
    /**
     * 日销售总额
     */
    private Double amount;
}
