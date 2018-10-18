package com.dyl.sell.repository;

import com.dyl.sell.domain.ProductType;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductTypeRepository extends JpaRepository<ProductType, Integer> {
    public ProductType findByCode(Integer code);
    public ProductType findByType(String type);
}
