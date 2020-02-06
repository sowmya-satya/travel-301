package com.mindtree.travelbookingapp.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

@Entity
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int userId;
	private String userName;
	private int age;
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "userId")
	private Set<Booking> bookings;

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User(int userId, String userName, int age, Set<Booking> bookings) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.age = age;
		this.bookings = bookings;
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

	public Set<Booking> getBookings() {
		return bookings;
	}

	public void setBookings(Set<Booking> bookings) {
		this.bookings = bookings;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", age=" + age + ", bookings=" + bookings + "]";
	}

}
