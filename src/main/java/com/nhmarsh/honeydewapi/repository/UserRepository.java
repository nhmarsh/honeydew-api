package com.nhmarsh.honeydewapi.repository;

import com.nhmarsh.honeydewapi.entity.User;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface UserRepository extends CrudRepository<User, Long> {

    List<User> findAllByUsername(String username);
}
