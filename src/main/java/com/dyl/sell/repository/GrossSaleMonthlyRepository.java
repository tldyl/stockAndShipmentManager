package com.dyl.sell.repository;

import com.dyl.sell.domain.GrossSaleMonthly;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface GrossSaleMonthlyRepository extends JpaRepository<GrossSaleMonthly, String> {
    public GrossSaleMonthly findByMonth(String month);
    public List<GrossSaleMonthly> findByMonthStartingWith(String month);
}
