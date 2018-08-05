package com.dyl.sell.repository;

import com.dyl.sell.domain.WarehouseDetailed;
import org.springframework.data.jpa.repository.JpaRepository;

import java.sql.Date;
import java.util.List;

public interface WarehouseDetailedRepository extends JpaRepository<WarehouseDetailed, String> {
    public WarehouseDetailed findByTradeCode(String tradeCode);
    public WarehouseDetailed findByBillCode(String billCode);
    public List<WarehouseDetailed> findByBillDate(Date billDate);
    public List<WarehouseDetailed> findByUnit(String unit);
}
