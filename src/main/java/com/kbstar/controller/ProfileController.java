package com.kbstar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/profile")
public class ProfileController {

    String dirProfile = "profile/";
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

    @RequestMapping("/reviews")
    public String reviews(Model model){
        model.addAttribute("center","userProfile");
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
}
