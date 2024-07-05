package com.scan.pass.service;

import com.scan.pass.bean.Stop;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import com.scan.pass.bean.User;
import com.scan.pass.repository.UserRepository;
import com.scan.pass.repository.StopRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;

    @Autowired
    private StopRepository stopRepository;
    
    @Autowired
    private QrCodeGenerator qrCodeGenerator;

    public Optional<User> findUserByQrCodeData(String qrCodeData) {
        // Assuming the data in the QR code is the User's toString() representation
        List<User> users = userRepository.findAll();
        return users.stream()
            .filter(user -> user.toString().equals(qrCodeData))
            .findFirst();
    }

    public List<String> getAllStops() {
        return stopRepository.findAll().stream()
            .map(Stop::getName)
            .collect(Collectors.toList());
    }
    
    public User saveUser(User user) {
        // Generate QR code with formatted user details
        String userDetails = user.getFormattedDetails();
        byte[] qrCode = qrCodeGenerator.generateQrCode(userDetails);
        user.setQrCode(qrCode);
        return userRepository.save(user);
    }
    
    
    public Optional<User> getUserById(Long userId) {
        return userRepository.findById(userId);
    }
}
