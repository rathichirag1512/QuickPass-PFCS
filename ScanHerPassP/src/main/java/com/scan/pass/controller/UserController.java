package com.scan.pass.controller;

import com.scan.pass.repository.*;
import com.scan.pass.bean.User;
import com.scan.pass.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Base64;
import java.util.Optional;

@Controller

public class UserController {

    @Autowired
    private UserService userService;
    
    @Autowired
    private UserRepository userRepository;

    @GetMapping("/register")
    public String showRegistrationForm(Model model) {
        model.addAttribute("user", new User());
        return "register";
    }

    @PostMapping("/register")
    public String registerUser(@ModelAttribute User user, Model model) {
        User savedUser = userService.saveUser(user);
        String base64QrCode = Base64.getEncoder().encodeToString(savedUser.getQrCode());
        model.addAttribute("savedUser", savedUser);
        model.addAttribute("qrCodeImageBase64", base64QrCode);
        return "register-success"; // JSP page to show success message
    }

    @GetMapping("/{userId}")
    public ResponseEntity<User> getUserById(@PathVariable Long userId) {
        Optional<User> optionalUser = userService.getUserById(userId);
        if (optionalUser.isEmpty()) {
            return ResponseEntity.notFound().build();
        }
        return ResponseEntity.ok(optionalUser.get());
    }
}
