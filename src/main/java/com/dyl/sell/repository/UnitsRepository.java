package com.dyl.sell.repository;

import com.dyl.sell.domain.Units;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UnitsRepository extends JpaRepository<Units, String> {
    public Units findByFullName(String fullName);
}
