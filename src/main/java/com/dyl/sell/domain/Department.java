package com.dyl.sell.domain;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 * @author tldyl
 * @since 2018-7-15
 */

@Entity
@Data
public class Department {
    /**
     * 部门id
     */
    @Id
    @GeneratedValue
    private int departmentId;
    /**
     * 部门名称
     */
    private String departmentName;
}
