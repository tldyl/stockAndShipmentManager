package com.dyl.sell.domain;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
@Data
public class DetailSaleDaily {
    /**
     * 日期
     */
    private String day;
    /**
     * 商品类型
     */
    private String type;
    /**
     * 商品全称
     */
    @Id
    private String fullName;
    /**
     * 当日销售额
     */
    private Double amount;
}
