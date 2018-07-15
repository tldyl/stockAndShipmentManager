package com.dyl.sell.repository;

import com.dyl.sell.domain.CharactorAndAuthority;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CharactorAndAuthorityRepository extends JpaRepository<CharactorAndAuthority, String> {
    public CharactorAndAuthority findByCharactor(String charactor);
    public List<CharactorAndAuthority> findByHasAuthorityContaining(String authority);
}
