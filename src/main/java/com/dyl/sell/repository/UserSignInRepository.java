package com.dyl.sell.repository;

import com.dyl.sell.domain.UserSignIn;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserSignInRepository extends JpaRepository<UserSignIn, Integer> {
    public UserSignIn findByUid(Integer uid);
}
