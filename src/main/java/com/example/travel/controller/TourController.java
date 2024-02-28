package com.example.travel.controller;

import com.example.travel.model.Tour;
import com.example.travel.service.TourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/tours")
public class TourController {
    private final TourService tourService;
    @Autowired
    public TourController(TourService tourService) {
        this.tourService = tourService;
    }
    @GetMapping("/list")
    public String getAllTours(Model model) {
        model.addAttribute("tours", tourService.getAllTours());
        return "tours/list";
    }
    @GetMapping("/{id}")
    public String getTourById(@PathVariable Long id, Model model) {
        Tour tours = tourService.getTourById(id);
        model.addAttribute("tour", tours);
        return "tours/details";
    }
    @GetMapping("/create")
    public String showCreateForm(Model model) {
        model.addAttribute("tour", new Tour());
        return "tours/create";
    }
    @PostMapping("/create")
    public String createPlace(@ModelAttribute Tour tour) {
        tourService.createTour(tour);
        return "redirect:/tours";
    }
    @GetMapping("/{id}/delete")
    public String deleteUser(@PathVariable Long id) {
        tourService.deleteTour(id);
        return "redirect:/places";
    }
}


