package com.dyl.sell.dto;

import lombok.Data;

import java.util.List;

@Data
public class SellDataCommit {
    private Double amount;
    private List<Good> goods;
}
