package com.kbstar.controller;


import com.kbstar.dto.ChatDetails;
import com.kbstar.dto.Chatcontents;
import com.kbstar.dto.Chatroom;
import com.kbstar.gpt.OpenAIClient2;
import com.kbstar.mapper.ChatContentsMapper;
import com.kbstar.service.ChatContentsService;
import com.kbstar.util.PapagoDetectLangs;
import com.kbstar.util.PapagoTranslation;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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
    @RequestMapping("/detectLanguage")
    public Object detectLanguage(
            @RequestParam("text")String text
    ) {
        PapagoDetectLangs translationDetector = new PapagoDetectLangs();
        String responseBody = translationDetector.post(text);
        return responseBody;
    }
    @RequestMapping("/translate")
    public Object translate(
            @RequestParam("targetLanguage") String targetLanguage,
            @RequestParam("text")String text
    ) {
        PapagoTranslation translationRequest = new PapagoTranslation();
        String responseBody = translationRequest.post(targetLanguage, text);
        return responseBody;
    }

    @GetMapping("/gpt/generate")
    @ResponseBody
    public String generateCode(@RequestParam("message") String message) {
        try {
            OpenAIClient2 openAIClient2 = new OpenAIClient2();
            String code = openAIClient2.generateCode(message);
            return code;
        } catch (Exception e) {
            e.printStackTrace();
            return "Error occurred";
        }
    }

}
