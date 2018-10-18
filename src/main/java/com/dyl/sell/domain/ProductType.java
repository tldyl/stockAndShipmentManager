package com.dyl.sell.domain;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * 商品类型代号表
 */
@Entity
@Data
public class ProductType {
    /**
     * 商品类型代号
     */
    @Id
    private Integer code;
    /**
     * 商品类型
     */
    private String type;
}
