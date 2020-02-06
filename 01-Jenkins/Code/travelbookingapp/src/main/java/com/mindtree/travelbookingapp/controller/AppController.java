package com.mindtree.travelbookingapp.controller;

import java.sql.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mindtree.travelbookingapp.dto.BookingDto;
import com.mindtree.travelbookingapp.dto.UserDto;
import com.mindtree.travelbookingapp.service.BookingService;
import com.mindtree.travelbookingapp.service.UserService;

@Controller
public class AppController {

	@Autowired
	private UserService userService;
	@Autowired
	private BookingService bookingService;

	@RequestMapping("/")
	public String home() {
		return "menu";
	}

	@RequestMapping("/user")
	public String user() {
		return "user";
	}

	@RequestMapping("/addUser")
	public String addUser(UserDto userDto, Model model) {
		model.addAttribute("status", userService.addUser(userDto));
		return "user";
	}

	@RequestMapping("/booking")
	public String booking(Model model) {
		model.addAttribute("user", userService.getUserDetails());
		return "booking";
	}

	@RequestMapping("/addBooking")
	public String addBooking(@RequestParam String userName, BookingDto bookingDto, Model model) {
		model.addAttribute("status", bookingService.addBookingDetails(userName, bookingDto));
		return "booking";
	}

	@RequestMapping("/view")
	public String view(Model model) {
		model.addAttribute("user", userService.getUserDetails());
		return "view";
	}

	@RequestMapping("/getDetails")
	public String getDetails(Model model, @RequestParam String userName, @RequestParam Date dateOfJourney) {
		model.addAttribute("booking", bookingService.getDetails(userName, dateOfJourney));
		model.addAttribute("user", userService.getUserDetails());
		return "view";
	}

	int bookingId1 = 0;

	@RequestMapping("/update/{bookingId}")
	public String updateDetails(@PathVariable int bookingId, Model model) {
		bookingId1 = bookingId;
		model.addAttribute("booking", bookingService.getBookingDetails(bookingId));
		return "update";
	}

	@RequestMapping("/updateDetails")
	public String updateBookingDetails(BookingDto bookingDto, Model model) {
		model.addAttribute("booking", bookingService.updateBookingDetails(bookingDto));
		return "message";
	}
}
