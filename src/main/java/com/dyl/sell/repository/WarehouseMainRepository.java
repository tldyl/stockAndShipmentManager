package com.dyl.sell.repository;

import com.dyl.sell.domain.WarehouseMain;
import org.springframework.data.jpa.repository.JpaRepository;

public interface WarehouseMainRepository extends JpaRepository<WarehouseMain, Integer> {
    public WarehouseMain findByBillCode(String billCode);
}
