package com.kbstar.controller;


import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;


@Slf4j

@Controller
public class MainController {


    Logger logger = LoggerFactory.getLogger(this.getClass().getSimpleName());

    String dirProfile = "profile/";
    String dir = "chat/";


    @RequestMapping("/")
    public String main(Model model) throws Exception {
        return "index";
    }

    @RequestMapping("/register")
    public String register(Model model){
        model.addAttribute("center","register");
        return "index";
    }

    @RequestMapping("/login")
    public String login(Model model){
        model.addAttribute("center","login");
        return "index";
    }


    @RequestMapping("/bookinglist")
    public String bookinglist(Model model){
        model.addAttribute("center","bookinglist");
        return "index";
    }



    @RequestMapping("/total")
    public String total(Model model){
        model.addAttribute("center","total");
        return "index";
    }


    @RequestMapping("/roomlist")
    public String roomlist(Model model){
        model.addAttribute("center","roomlist");
        return "index";
    }

    @RequestMapping("/roomcategory")
    public String roomcategory(Model model){
        model.addAttribute("center","roomcategory");
        return "index";
    }

    @RequestMapping("/authResult")
    public String authResult(Model model){
        model.addAttribute("center","authResult");
        return "index";
    }

    @RequestMapping("/gpt")
    public String gpt(Model model){
        model.addAttribute("center","gpt/gpt");
        return "index";
    }

//    @RequestMapping("/calender")
//    public String calender(Model model){
//        model.addAttribute("center","calender");
//        return "index";
//    }
@RequestMapping("/websocket")
public String websocket(Model model){
    model.addAttribute("center", "test/webSocketTest");
    return "index";
}
}
