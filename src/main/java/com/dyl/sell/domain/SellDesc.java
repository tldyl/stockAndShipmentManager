package com.dyl.sell.domain;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * @author tldyl
 * @since 2018-8-16
 *
 * 销售排行表
 */

@Entity
@Data
public class SellDesc {
    /**
     * 商品编号
     */
    @Id
    private String tradeCode;
    /**
     * 商品全称
     */
    private String fullName;
    /**
     * 销售数量
     */
    private Integer amount;
    /**
     * 销售总金额
     */
    private Double totalPrice;
}
