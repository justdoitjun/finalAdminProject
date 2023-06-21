package com.kbstar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/profile")
public class ProfileController {

    String dirProfile = "profile/";
    String dirReservation = "reservation/";
    String dir = "chat/";
    @RequestMapping("")
    public String profile(Model model){
        model.addAttribute("center","userProfile");
        return "index";
    }

    @RequestMapping("/myinfo")
    public String myinfo(Model model){
        model.addAttribute("center","userProfile");
        model.addAttribute("centerUserProfile",dirProfile+"myInfo");
        return "index";
    }

    @RequestMapping("/map")
    public String map(Model model){
        model.addAttribute("center","userProfile");
        model.addAttribute("centerUserProfile",dirProfile+"map");
        return "index";
    }

    @RequestMapping("/current")
    public String current(Model model){
        model.addAttribute("center","userProfile");
        model.addAttribute("centerUserProfile",dirProfile+"current");
        return "index";
    }



    @RequestMapping("/reviews")
    public String reviews(Model model, String hostId){
        model.addAttribute("center","userProfile");
        model.addAttribute("hostId", hostId);
        model.addAttribute("centerUserProfile",dirProfile+"reviews");
        return "index";
    }
    @RequestMapping("/reviews/detail")
    public String roomReviews( Model model, Integer roomId) throws Exception{
        model.addAttribute("roomId", roomId);
        model.addAttribute("center","userProfile");
        model.addAttribute("centerUserProfile",dirProfile+"roomReviews");
        return "index";
    }

    @RequestMapping("/reservation")
    public String reservation( Model model, String hostId) throws Exception{
        model.addAttribute("hostId", hostId);
        model.addAttribute("center","userProfile");
        model.addAttribute("centerUserProfile",dirReservation+"pay");

        return "index";
    }

    @RequestMapping("/finance")
    public String finance(Model model){
        model.addAttribute("center","userProfile");
        model.addAttribute("centerUserProfile",dirProfile+"finance");
        return "index";
    }
}

