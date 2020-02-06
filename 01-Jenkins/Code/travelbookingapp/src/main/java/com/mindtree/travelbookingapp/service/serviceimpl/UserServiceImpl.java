package com.mindtree.travelbookingapp.service.serviceimpl;

import java.util.ArrayList;
import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mindtree.travelbookingapp.dto.UserDto;
import com.mindtree.travelbookingapp.entity.User;
import com.mindtree.travelbookingapp.repository.UserRepository;
import com.mindtree.travelbookingapp.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository userRepository;

	ModelMapper mapper = new ModelMapper();

	@Override
	public String addUser(UserDto userDto) {
		// TODO Auto-generated method stub
		User user = mapper.map(userDto, User.class);
		userRepository.save(user);
		return "Your details are inserted successfully";
	}

	@Override
	public List<UserDto> getUserDetails() {
		// TODO Auto-generated method stub
		List<User> users = userRepository.findAll();
		List<UserDto> userDetails = new ArrayList<UserDto>();
		for (User u : users) {
			UserDto user = mapper.map(u, UserDto.class);
			userDetails.add(user);
		}
		return userDetails;
	}

}
