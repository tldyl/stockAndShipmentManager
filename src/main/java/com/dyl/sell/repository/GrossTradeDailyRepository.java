package com.dyl.sell.repository;

import com.dyl.sell.domain.GrossTradeDaily;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface GrossTradeDailyRepository extends JpaRepository<GrossTradeDaily, String> {
    public GrossTradeDaily findByDay(String day);
    public List<GrossTradeDaily> findByDayStartingWith(String day);
}
