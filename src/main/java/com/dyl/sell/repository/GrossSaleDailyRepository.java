package com.dyl.sell.repository;

import com.dyl.sell.domain.GrossSaleDaily;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface GrossSaleDailyRepository extends JpaRepository<GrossSaleDaily, String> {
    public GrossSaleDaily findByDay(String day);
    public List<GrossSaleDaily> findByDayStartingWith(String day);
}
