package com.dyl.sell.domain;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * @author tldyl
 * @since 2018-7-19
 *
 * 角色主页关系表
 */

@Data
@Entity
public class CharactorAndHomePage {
    /**
     * 角色名称
     */
    @Id
    private String charactor;
    /**
     * 对应的主页的路径(均为html文件，不带"/"符号)
     */
    private String homePage;
    /**
     * 这个主页的权重，越大越有可能作为用户的主页
     */
    private Integer pageWeight;
}
