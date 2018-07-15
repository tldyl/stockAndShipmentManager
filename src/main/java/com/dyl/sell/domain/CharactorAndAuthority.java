package com.dyl.sell.domain;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
@Data
public class CharactorAndAuthority {
    /**
     * 角色名称
     */
    @Id
    private String charactor;
    /**
     * 此角色所拥有的全部权限
     */
    private String hasAuthority;
}
