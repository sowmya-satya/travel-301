package com.mindtree.travelbookingapp.service;

import java.util.List;

import com.mindtree.travelbookingapp.dto.UserDto;

public interface UserService {

	String addUser(UserDto userDto);

	List<UserDto> getUserDetails();

}
