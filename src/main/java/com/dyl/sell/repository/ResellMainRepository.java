package com.dyl.sell.repository;

import com.dyl.sell.domain.ResellMain;
import org.springframework.data.jpa.repository.JpaRepository;

import java.sql.Date;
import java.util.List;

public interface ResellMainRepository extends JpaRepository<ResellMain, Integer> {
    public ResellMain findByBillCode(String billCode);
    public List<ResellMain> findByBillDate(Date billDate);
    public List<ResellMain> findByUnitContaining(String unit);
    public List<ResellMain> findByHandle(String handle);
}
