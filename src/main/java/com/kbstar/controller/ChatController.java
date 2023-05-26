package com.kbstar.controller;


import com.kbstar.dto.ChatDetails;
import com.kbstar.dto.Chatcontents;
import com.kbstar.dto.Chatroom;
import com.kbstar.service.ChatContentsService;
import com.kbstar.service.ChatRoomService;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Slf4j
@Controller
public class ChatController {
    @Autowired
    ChatRoomService service;
    @Autowired
    ChatContentsService chatContentsService;

    String dir = "chat/";

    @RequestMapping("/chatroom")
    public String main(Model model) throws Exception {
        model.addAttribute("center", dir+"chatroomlist");
        return "index";
    }
    @RequestMapping("/chatroomalltest")
    public String chatroomAllTest(Model model) throws Exception {
        List<Chatroom> messengerListAll = service.get();
        JSONArray jsonArray = new JSONArray();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        //(1) 전체 메신저리스트를 받는다.
        // (2) 내가 추가적으로 필요한 (1) 최신 date와 (2) 최신 컨텐츠를 추가한
        // 새로운 리스트를 만들어낸다.
        // (3) 각론 - 배열을 다루기 가장 쉬운 것은 forEach 나 for문
        // 관리 용의성을 위해서 (배열 길이 조절) for 문 선택
        //(4) 최종으로 웹에 던지는 것은 파싱 용의성을 위해 JSON Array(object 보단 뱅려)
        for(Chatroom e : messengerListAll) {
            JSONObject jsonObject = new JSONObject();
            Integer chatRoomId = e.getChatRoomId();

            jsonObject.put("chatRoomInfo", e);
            jsonObject.put("recent", chatContentsService.findRecentData(chatRoomId));
            jsonArray.add(jsonObject);
        }

        log.info("===============");
        log.info(jsonArray.toJSONString());
        log.info("===============");

        model.addAttribute("center", dir+"chatroomAll");
        model.addAttribute("mList", jsonArray);
        return "index";
    }

    //admin 단에서 hostId를 parameter 값으로 받는 경우
    @RequestMapping("/chatdetail")
    public String chatDetailHost(@RequestParam("chatRoomId")Integer chatRoomId,
                                 @RequestParam("hostId")String hostId,
                                       Model model) throws Exception{
        model.addAttribute("chatRoomId", chatRoomId);
        model.addAttribute("hostId", hostId);
        List<ChatDetails> chatDetailsList = chatContentsService.findChatDetailsHost(chatRoomId, hostId);
        model.addAttribute("chatDetailsList", chatDetailsList);
        model.addAttribute("center", dir+"chatdetail");
        return "index";
    }

}

































