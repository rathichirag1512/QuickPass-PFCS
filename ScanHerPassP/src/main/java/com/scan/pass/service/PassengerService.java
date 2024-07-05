package com.scan.pass.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.scan.pass.bean.Passenger;
import com.scan.pass.repository.PassengerRepository;



@Service
public class PassengerService {

    @Autowired
    private PassengerRepository passengerRepository;

    @Autowired
    private BCryptPasswordEncoder passwordEncoder;

    public void saveUser(Passenger user) {
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        passengerRepository.save(user);
    }

    public boolean validateUser(String email, String password) {
        Passenger user = passengerRepository.findByEmail(email);
        return user != null && passwordEncoder.matches(password, user.getPassword());
    }
    

    public boolean emailExists(String email) {
        return passengerRepository.findByEmail(email) != null;
    }
}
