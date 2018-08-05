package com.dyl.sell.repository;

import com.dyl.sell.domain.RewarehouseMain;
import org.springframework.data.jpa.repository.JpaRepository;

import java.sql.Date;
import java.util.List;

public interface RewarehouseMainRepository extends JpaRepository<RewarehouseMain, Integer> {
    public RewarehouseMain findByBillCode(String billCode);
    public List<RewarehouseMain> findByBillDate(Date billDate);
    public List<RewarehouseMain> findByUnit(String unit);
    public List<RewarehouseMain> findByHandle(String handle);
}
