package com.dyl.sell.repository;

import com.dyl.sell.domain.CurrentAccount;
import org.springframework.data.jpa.repository.JpaRepository;

import java.sql.Date;
import java.util.List;

public interface CurrentAccountRepository extends JpaRepository<CurrentAccount, String> {
    public CurrentAccount findByBillCode(String billCode);
    public List<CurrentAccount> findByBillDate(Date billDate);
    public List<CurrentAccount> findByBalance(Integer balance);
    public List<CurrentAccount> findByUnitsContaining(String units);
}
