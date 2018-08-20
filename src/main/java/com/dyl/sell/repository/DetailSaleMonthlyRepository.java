package com.dyl.sell.repository;

import com.dyl.sell.domain.DetailSaleMonthly;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface DetailSaleMonthlyRepository extends JpaRepository<DetailSaleMonthly, String> {
    public DetailSaleMonthly findByFullName(String fullName);
    public List<DetailSaleMonthly> findByDay(String day);
    public List<DetailSaleMonthly> findByDayOrderByType(String day);
}
