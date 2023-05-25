package com.kbstar.controller;


import com.kbstar.dto.Chatroom;
import com.kbstar.service.ChatRoomService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Slf4j
@Controller
public class ChatController {
    @Autowired
    ChatRoomService service;

    String dir = "chat/";

    @RequestMapping("/chatroom")
    public String main(Model model) throws Exception {
        model.addAttribute("center", dir+"chatroomlist");
        return "index";
    }
    @RequestMapping("/chatroomalltest")
    public String chatroomAllTest(Model model) throws Exception {
        List<Chatroom> messengerListAll = service.get();

        model.addAttribute("center", dir+"chatroomAll");
        model.addAttribute("mList", messengerListAll);
        return "index";
    }
}
