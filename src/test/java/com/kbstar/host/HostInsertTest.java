package com.kbstar.host;

import com.kbstar.dto.Chatroom;
import com.kbstar.dto.Host;
import com.kbstar.service.ChatRoomService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
public class HostInsertTest {
    @Autowired
    ChatRoomService service;
    @Test
    void contextLoads() {
        try{
//            INSERT INTO guest(hostId,hostName,hostPwd, hostRegDate) VALUES (#{hostId},#{hostName},#{hostPwd}, SYSDATE)
//
//            Host host = new Host("host1","hostName", "pwd01", nowdate());
//            service.register(chatroom);
            service.get();
        }catch(Exception e){
            log.info("Error");
            e.printStackTrace();
        }

    }
}
