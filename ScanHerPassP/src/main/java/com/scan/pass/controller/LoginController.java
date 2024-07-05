package com.scan.pass.controller;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.scan.pass.bean.Passenger;
import com.scan.pass.service.PassengerService;



@Controller
public class LoginController {

    @Autowired
    private PassengerService passengerService;

    @GetMapping("/index")
    public String showIndexPage() {
        return "index";
    }

    @GetMapping("/login")
    public String showLoginPage(Model model, @RequestParam(value = "error", required = false) String error) {
        if (error != null) {
            model.addAttribute("errorMessage", "Invalid email or password.");
        }
        return "login";
    }

    @PostMapping("/login")
    public String loginUser(@RequestParam("email") String email, 
                            @RequestParam("password") String password, 
                            Model model) {
        if (passengerService.validateUser(email, password)) {
            return "redirect:/homepage"; // Redirect to home page after successful login
        } else {
            model.addAttribute("errorMessage", "Invalid email or password.");
            return "login";
        }
    }

    @GetMapping("/newUser")
    public String showNewUserForm(Model model) {
        model.addAttribute("user", new Passenger());
        return "newUser";
    }

    @PostMapping("/newUser")
    public String registerNewUser(@ModelAttribute("user") Passenger user, Model model) {
        if (passengerService.emailExists(user.getEmail())) {
            model.addAttribute("errorMessage", "Email already exists.");
            return "newUser";
        }
        passengerService.saveUser(user);
        return "redirect:/login"; // Redirect to login page after successful registration
    }
}
