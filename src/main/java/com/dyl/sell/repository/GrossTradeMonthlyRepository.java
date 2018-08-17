package com.dyl.sell.repository;

import com.dyl.sell.domain.GrossTradeMonthly;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface GrossTradeMonthlyRepository extends JpaRepository<GrossTradeMonthly, String> {
    public GrossTradeMonthly findByMonth(String month);
    public List<GrossTradeMonthly> findByMonthStartingWith(String month);
}
