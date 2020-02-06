package com.mindtree.travelbookingapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mindtree.travelbookingapp.entity.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {

	User findByuserName(String userName);

}
