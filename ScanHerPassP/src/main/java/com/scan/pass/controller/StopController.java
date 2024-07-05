package com.scan.pass.controller;

import com.scan.pass.bean.Stop;

import com.scan.pass.service.StopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class StopController {
    @Autowired
    private StopService stopService;

    @GetMapping("/add-stop")
    public String showAddStopForm(Model model) {
        model.addAttribute("stop", new Stop());
        return "add-stop";
    }

    @PostMapping("/add-stop")
    public String addStop(@ModelAttribute Stop stop, Model model) {
        stopService.addStop(stop);
        model.addAttribute("stops", stopService.getAllStops());
        return "view-stops";
    }

    @GetMapping("/view-stops")
    public String viewStops(Model model) {
        model.addAttribute("stops", stopService.getAllStops());
        return "view-stops";
    }
}
