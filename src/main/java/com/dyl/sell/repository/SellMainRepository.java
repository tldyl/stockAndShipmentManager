package com.dyl.sell.repository;

import com.dyl.sell.domain.SellMain;
import org.springframework.data.jpa.repository.JpaRepository;

import java.sql.Date;
import java.util.List;

public interface SellMainRepository extends JpaRepository<SellMain, Integer> {
    public SellMain findByBillCode(String billCode);
    public List<SellMain> findByBillDate(Date billDate);
    public List<SellMain> findByHandleContaining(String handle);
}
