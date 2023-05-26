package com.kbstar.controller;


import com.kbstar.dto.Chatcontents;
import com.kbstar.mapper.ChatContentsMapper;
import com.kbstar.service.ChatContentsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;

@Controller
@RequestMapping("/chat")
public class ChatAjaxController {

    @Autowired
    ChatContentsService service;
    @RequestMapping("/request")
    public String main(String chatContents,
                       String chatSender,
                       Integer chatRoomId,
                       Model model) throws Exception {
        Chatcontents chatcontent = new Chatcontents(0, chatRoomId, chatSender, chatContents, null);
        service.register(chatcontent);
        return "index";
    }
}
