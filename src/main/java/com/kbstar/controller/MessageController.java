package com.kbstar.controller;

import com.kbstar.dto.Message;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessageHeaderAccessor;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;

@Slf4j
@Controller
public class MessageController {
    @Autowired
    SimpMessagingTemplate template;

    @MessageMapping("/receiveall") // 모두에게 전송
    public void receiveall(Message msg, SimpMessageHeaderAccessor headerAccessor) {
        log.info(msg.toString());
        template.convertAndSend("/send",msg);
    }
    @MessageMapping("/receiveme") // 나에게만 전송 ex)Chatbot
    public void receiveme(Message msg, SimpMessageHeaderAccessor headerAccessor) {

        String id = msg.getSendid();
        template.convertAndSend("/send/"+id,msg);
    }
    @MessageMapping("/receiveto") // 특정 Id에게 전송
    public void receiveto(Message msg, SimpMessageHeaderAccessor headerAccessor) {
        log.info("===========receive================");
        log.info("받"+ msg);
        log.info("==========receiveTo=================");
        String id = msg.getSendid();
        String target = msg.getReceiveid();
        template.convertAndSend("/send/to/"+target,msg);
    }
}