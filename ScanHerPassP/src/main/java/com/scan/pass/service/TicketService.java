package com.scan.pass.service;

import com.scan.pass.bean.Ticket;
import com.scan.pass.bean.User;
import com.scan.pass.repository.TicketRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Optional;

@Service
public class TicketService {
    @Autowired
    private TicketRepository ticketRepository;

    @Autowired
    private UserService userService;

    @Autowired
    private StopService stopService;

    @GetMapping("/generate-ticket")
    public String showTicketForm(Model model) {
        model.addAttribute("stops", stopService.getAllStops());
        return "generate-ticket";
    }
    
    public void saveTicket(Ticket ticket) {
        ticketRepository.save(ticket);
    }
    
   
}
