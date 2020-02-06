package com.mindtree.travelbookingapp.dto;

import java.util.Set;

import com.mindtree.travelbookingapp.entity.Booking;

public class UserDto {

	private int userId;
	private String userName;
	private int age;
	private Set<BookingDto> bookingsDto;

	public UserDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UserDto(int userId, String userName, int age, Set<BookingDto> bookingsDto) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.age = age;
		this.bookingsDto = bookingsDto;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public Set<BookingDto> getBookingsDto() {
		return bookingsDto;
	}

	public void setBookingsDto(Set<BookingDto> bookingsDto) {
		this.bookingsDto = bookingsDto;
	}

	@Override
	public String toString() {
		return "UserDto [userId=" + userId + ", userName=" + userName + ", age=" + age + ", bookingsDto=" + bookingsDto
				+ "]";
	}

}
