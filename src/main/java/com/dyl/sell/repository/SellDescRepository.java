package com.dyl.sell.repository;

import com.dyl.sell.domain.SellDesc;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface SellDescRepository extends JpaRepository<SellDesc, String> {
    public List<SellDesc> findAllOrderByAmount(Integer amount);
    public List<SellDesc> findAllOrOrderByTotalPrice(Double totalPrice);
}