package com.kbstar.chatRoom;

import com.kbstar.dto.Chatroom;
import com.kbstar.service.ChatRoomService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
public class SelectAllTest {
    @Autowired
    ChatRoomService service;
    @Test
    void contextLoads() {
        try{
            service.get();
        }catch(Exception e){
            log.info("Error");
            e.printStackTrace();
        }

    }
}
