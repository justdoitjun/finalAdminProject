package com.kbstar.chatContents;

import com.kbstar.dto.Chatcontents;
import com.kbstar.dto.Chatroom;
import com.kbstar.service.ChatContentsService;
import com.kbstar.service.ChatRoomService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Date;

@Slf4j
@SpringBootTest
public class InsertTest {
    @Autowired
    ChatContentsService service;
    @Test
    void contextLoads() {
        try{
            //당분간 그냥 chatRoom 1로만 insert 하자.
            Chatcontents chatcontents = new Chatcontents(0, 1, "guest1", "hi new there4", new Date());
            service.register(chatcontents);
            service.get();
        }catch(Exception e){
            log.info("Error");
            e.printStackTrace();
        }

    }
}
