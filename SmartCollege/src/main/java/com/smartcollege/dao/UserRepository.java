package com.smartcollege.dao;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.smartcollege.models.User;

@Repository
public interface UserRepository extends CrudRepository<User, Integer> {
     public Optional<User> findByUsernameAndPassword(String username, String password);
}
