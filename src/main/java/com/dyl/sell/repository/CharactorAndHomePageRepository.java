package com.dyl.sell.repository;

import com.dyl.sell.domain.CharactorAndHomePage;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CharactorAndHomePageRepository extends JpaRepository<CharactorAndHomePage, String> {
    public CharactorAndHomePage findByCharactor(String charactor);
}
