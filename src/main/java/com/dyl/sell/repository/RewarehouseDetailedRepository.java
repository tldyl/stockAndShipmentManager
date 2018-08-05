package com.dyl.sell.repository;

import com.dyl.sell.domain.RewarehouseDetailed;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface RewarehouseDetailedRepository extends JpaRepository<RewarehouseDetailed, String> {
    public RewarehouseDetailed findByTradeCode(String tradeCode);
    public List<RewarehouseDetailed> findByType(String type);
    public List<RewarehouseDetailed> findByUnitContaining(String unit);
}
