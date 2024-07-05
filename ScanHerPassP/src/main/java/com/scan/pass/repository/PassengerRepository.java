package com.scan.pass.repository;

import org.springframework.data.jpa.repository.JpaRepository;


import com.scan.pass.bean.Passenger;

public interface PassengerRepository extends JpaRepository<Passenger, Long> {
    Passenger findByEmail(String email);
}
