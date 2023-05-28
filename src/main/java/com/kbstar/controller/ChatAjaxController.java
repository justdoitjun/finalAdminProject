package com.kbstar.controller;


import com.kbstar.dto.ChatDetails;
import com.kbstar.dto.Chatcontents;
import com.kbstar.dto.Chatroom;
import com.kbstar.mapper.ChatContentsMapper;
import com.kbstar.service.ChatContentsService;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;
import java.util.List;

@Slf4j
@RestController
@RequestMapping("/chat")
public class ChatAjaxController {
    @Autowired
    ChatContentsService chatContentsService;
    @RequestMapping("/request")
    public String send(String chatContents,
                       String chatSender,
                       Integer chatRoomId,
                       Model model) throws Exception {
        Chatcontents chatcontent = new Chatcontents(0, chatRoomId, chatSender, chatContents, null);
        chatContentsService.register(chatcontent);
        return "index";
    }
    @RequestMapping("/display")
    public Object display(
            @RequestParam("chatRoomId")Integer chatRoomId,
            @RequestParam("chatSender") String chatSender
                       ) {
            List<ChatDetails> chatDetailsList = chatContentsService.findChatDetailsHost(chatRoomId, chatSender);
            return chatDetailsList;
    }

}
