package com.dyl.sell.domain;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * @author tldyl
 * @since 2018-8-17
 *
 * 日交易笔数统计表
 */
@Entity
@Data
public class GrossTradeDaily {
    /**
     * 日期
     */
    @Id
    private String day;
    /**
     * 日交易笔数
     */
    private Integer amount;
}
