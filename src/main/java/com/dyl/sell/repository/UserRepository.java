package com.dyl.sell.repository;


import com.dyl.sell.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Integer> {
    public List<User> findByDepartmentId(Integer id);
    public List<User> findByStatus(Integer status);
    public List<User> findByDepartmentIdAndStatus(Integer id, Integer status);
    public List<User> findByUsernameContaining(String username);

    public User findByUsername(String username);
    public User findByUid(Integer uid);
}