package com.mindtree.travelbookingapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mindtree.travelbookingapp.entity.Booking;

@Repository
public interface BookingRepository extends JpaRepository<Booking, Integer> {

}
