package com.mindtree.travelbookingapp.dto;

import java.sql.Date;

public class BookingDto {

	private int bookingId;
	private String bookingFrom;
	private String bookingTo;
	private Date dateOfJourney;
	private String food;
	private String travellingWith;
	private double price;
	private int distance;

	public BookingDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BookingDto(int bookingId, String bookingFrom, String bookingTo, Date dateOfJourney, String food,
			String travellingWith, double price, int distance) {
		super();
		this.bookingId = bookingId;
		this.bookingFrom = bookingFrom;
		this.bookingTo = bookingTo;
		this.dateOfJourney = dateOfJourney;
		this.food = food;
		this.travellingWith = travellingWith;
		this.price = price;
		this.distance = distance;

	}

	public void setDateOfJourney(Date dateOfJourney) {
		this.dateOfJourney = dateOfJourney;
	}

	public int getDistance() {
		return distance;
	}

	public void setDistance(int distance) {
		this.distance = distance;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getBookingId() {
		return bookingId;
	}

	public void setBookingId(int bookingId) {
		this.bookingId = bookingId;
	}

	public String getBookingFrom() {
		return bookingFrom;
	}

	public void setBookingFrom(String bookingFrom) {
		this.bookingFrom = bookingFrom;
	}

	public String getBookingTo() {
		return bookingTo;
	}

	public void setBookingTo(String bookingTo) {
		this.bookingTo = bookingTo;
	}

	public Date getDateOfJourney() {
		return dateOfJourney;
	}

	public void setDateOfJoining(Date dateOfJourney) {
		this.dateOfJourney = dateOfJourney;
	}

	public String getFood() {
		return food;
	}

	public void setFood(String food) {
		this.food = food;
	}

	public String getTravellingWith() {
		return travellingWith;
	}

	public void setTravellingWith(String travellingWith) {
		this.travellingWith = travellingWith;
	}

	@Override
	public String toString() {
		return "BookingDto [bookingId=" + bookingId + ", bookingFrom=" + bookingFrom + ", bookingTo=" + bookingTo
				+ ", dateOfJourney=" + dateOfJourney + ", food=" + food + ", travellingWith=" + travellingWith
				+ ", price=" + price + ", distance=" + distance + "]";
	}

}
