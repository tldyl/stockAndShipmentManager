package com.dyl.sell.repository;

import com.dyl.sell.domain.Stock;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface StockRepository extends JpaRepository<Stock, String> {
    public Stock findByTradeCode(String tradeCode);
    public List<Stock> findByType(String type);
    public List<Stock> findByUnitContaining(String unit);
}
