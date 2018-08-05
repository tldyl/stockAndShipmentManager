package com.dyl.sell.repository;

import com.dyl.sell.domain.ResellDetailed;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ResellDetailedRepository extends JpaRepository<ResellDetailed, String> {
    public ResellDetailed findByBillCode(String billCode);
    public ResellDetailed findByTradeCode(String tradeCode);
    public List<ResellDetailed> findByType(String type);
    public List<ResellDetailed> findByUnitContaining(String unit);
}
