package com.dyl.sell.repository;

import com.dyl.sell.domain.DetailSaleDaily;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface DetailSaleDailyRepository extends JpaRepository<DetailSaleDaily, String> {
    public DetailSaleDaily findByFullName(String fullName);
    public List<DetailSaleDaily> findByDayOrderByType(String day);
}
