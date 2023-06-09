package com.kbstar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
}
