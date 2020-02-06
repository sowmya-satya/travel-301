package com.mindtree.travelbookingapp.service.serviceimpl;

import java.sql.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mindtree.travelbookingapp.dto.BookingDto;
import com.mindtree.travelbookingapp.entity.Booking;
import com.mindtree.travelbookingapp.entity.User;
import com.mindtree.travelbookingapp.repository.BookingRepository;
import com.mindtree.travelbookingapp.repository.UserRepository;
import com.mindtree.travelbookingapp.service.BookingService;

@Service
public class BookingServiceImpl implements BookingService {

	@Autowired
	private UserRepository userRepository;
	@Autowired
	private BookingRepository bookingRepository;

	ModelMapper mapper = new ModelMapper();

	static String userName1 = "";

	@Override
	public String addBookingDetails(String userName, BookingDto bookingDto) {
		// TODO Auto-generated method stub

		User u1 = userRepository.findByuserName(userName);
		Booking booking = mapper.map(bookingDto, Booking.class);

		if (u1.getAge() > 30 && u1.getAge() <= 50) {
			booking.setPrice((int) ((bookingDto.getDistance() * 10) - (.05 * (bookingDto.getDistance() * 10))));

		} else if (u1.getAge() > 50) {
			booking.setPrice((int) ((bookingDto.getDistance() * 10) - (.1 * (bookingDto.getDistance() * 10))));
		} else {
			booking.setPrice(booking.getDistance() * 10);
		}
		u1.getBookings().add(booking);
		bookingRepository.save(booking);
		return "Your details are added successfully";
	}

	@Override
	public Set<BookingDto> getDetails(String userName, Date dateOfJourney) {
		// TODO Auto-generated method stub
		User user = userRepository.findByuserName(userName);
		userName1 = userName;
		Set<Booking> bookings = user.getBookings();
		Set<BookingDto> bookingsDto = new HashSet<BookingDto>();
		for (Booking b : bookings) {
			if ((b.getDateOfJourney().after(dateOfJourney))) {
				BookingDto bookingDto = mapper.map(b, BookingDto.class);
				bookingsDto.add(bookingDto);
			}
		}
		return bookingsDto;
	}

	@Override
	public String updateBookingDetails(BookingDto bookingDto) {
		// TODO Auto-generated method stub
		User user = userRepository.findByuserName(userName1);
		Set<Booking> bookings = user.getBookings();
		Booking booking = mapper.map(bookingDto, Booking.class);
		for (Booking b : bookings) {
			if (user.getAge() > 30 && user.getAge() < 50) {
				b.setPrice((int) ((booking.getDistance() * 10) - (.05 * (booking.getDistance() * 10))));
			} else if (user.getAge() > 50) {
				b.setPrice((int) ((booking.getDistance() * 10) - (.1 * (booking.getDistance() * 10))));
			} else {
				b.setPrice(booking.getDistance() * 10);
			}
			b.setDistance(bookingDto.getDistance());
			user.getBookings().add(b);
			bookingRepository.saveAndFlush(b);
		}

		return "Your details are updated successfully";
	}

	@Override
	public BookingDto getBookingDetails(int bookingId) {
		// TODO Auto-generated method stub

		Booking booking = bookingRepository.findById(bookingId).get();
		BookingDto bookingDto = mapper.map(booking, BookingDto.class);

		return bookingDto;
	}

}
