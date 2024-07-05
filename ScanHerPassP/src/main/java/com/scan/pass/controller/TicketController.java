package com.scan.pass.controller;

import com.scan.pass.bean.Stop;
import com.scan.pass.bean.Ticket;
import com.scan.pass.bean.User;
import com.scan.pass.service.StopService;
import com.scan.pass.service.TicketService;
import com.scan.pass.service.UserService;
import com.agile.flightMgmtSystem.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
public class TicketController {

    @Autowired
    private UserService userService;

    @Autowired
    private StopService stopService;
    
    @Autowired
    private TicketService ticketService;
    

    @GetMapping("/generate-ticket")
    public String showTicketForm(Model model) {
        List<Stop> stops = stopService.getAllStops();
        model.addAttribute("stops", stops);
        return "generate-ticket";
    }

    @PostMapping("/generate-ticket")
    public String generateTicket(@RequestParam Long userId,
                                 @RequestParam String fromStop,
                                 @RequestParam String toStop,
                                 @RequestParam String gender,
                                 @RequestParam(required = false) Integer amount,
                                 RedirectAttributes redirectAttributes) {

        // Verify user by ID and gender
        User user = userService.getUserById(userId).orElse(null);
        if (user == null) {
            redirectAttributes.addFlashAttribute("error", "User not found with ID: " + userId);
            return "redirect:/generate-ticket";
        }

        if (!user.getGender().equalsIgnoreCase(gender)) {
            redirectAttributes.addFlashAttribute("error", "User gender does not match the provided gender");
            return "redirect:/generate-ticket";
        }

        // Set amount based on gender
        if ("female".equalsIgnoreCase(gender)) {
            amount = 0;
        } else if ("male".equalsIgnoreCase(gender)) {
            if (amount == null || amount <= 0) {
                redirectAttributes.addFlashAttribute("error", "Amount must be provided for male users.");
                return "redirect:/generate-ticket";
            }
        }

        // Create a new ticket and save it
        Ticket ticket = new Ticket();
        ticket.setId(userId);
        ticket.setFromStop(fromStop);
        ticket.setToStop(toStop);
        ticket.setAmount(amount);
        ticket.setGender(gender); // Set the gender
        ticketService.saveTicket(ticket);

        // Assuming ticket generation is successful
        redirectAttributes.addFlashAttribute("message", "Ticket generated successfully for user ID: " + userId);
        return "redirect:/success";
    }

    @GetMapping("/success")
    public String showSuccessPage(Model model) {
        return "success"; // assuming success.jsp is the JSP file for the success page
    }
}
