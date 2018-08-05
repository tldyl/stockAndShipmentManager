package com.dyl.sell.repository;

import com.dyl.sell.domain.SellDetailed;
import org.springframework.data.jpa.repository.JpaRepository;

import java.sql.Date;
import java.util.List;

public interface SellDetailedRepository extends JpaRepository<SellDetailed, String> {
    public SellDetailed findByTradeCode(String tradeCode);
    public SellDetailed findByBillCode(String billCode);
    public List<SellDetailed> findByBillDate(Date billDate);
    public List<SellDetailed> findByType(String type);
    public List<SellDetailed> findByUnitContaining(String unit);
}
