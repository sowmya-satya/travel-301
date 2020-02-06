package com.mindtree.travelbookingapp.service;

import java.sql.Date;
import java.util.Set;

import com.mindtree.travelbookingapp.dto.BookingDto;

public interface BookingService {

	String addBookingDetails(String userName, BookingDto bookingDto);

	Set<BookingDto> getDetails(String userName, Date dateOfJourney);

	String updateBookingDetails(BookingDto bookingDto);

	BookingDto getBookingDetails(int bookingId);

}
