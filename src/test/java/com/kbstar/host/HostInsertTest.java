package com.kbstar.host;

import com.kbstar.dto.Chatroom;
import com.kbstar.dto.Host;
import com.kbstar.service.ChatRoomService;
import com.kbstar.service.HostService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Date;

@Slf4j
@SpringBootTest
public class HostInsertTest {
    @Autowired
    HostService service;
    @Test
    void contextLoads() {
        try{
            //insertTest시 hostID를 자주 바꿔줄 것. -unique 값임.
            Host host = new Host("host17@gmail.com","hostName", "pwd01", new Date());
            service.register(host);
            service.get();
        }catch(Exception e){
            log.info("Error");
            e.printStackTrace();
        }

    }
}
