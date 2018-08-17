package com.dyl.sell.repository;

import com.dyl.sell.domain.WarehouseMain;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface WarehouseMainRepository extends JpaRepository<WarehouseMain, Integer> {
    public WarehouseMain findByBillCode(String billCode);
    public List<WarehouseMain> findByUnits(String units);
    public List<WarehouseMain> findByHandleContaining(String handle);
}
