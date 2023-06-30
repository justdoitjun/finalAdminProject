package com.kbstar.marker;

import com.kbstar.service.ChatRoomService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import com.kbstar.service.MarkerService;

@Slf4j
@SpringBootTest
public class SelectAllTest {
    @Autowired
    MarkerService service;
    @Test
    void contextLoads() {
        try{
            service.getLoc("서울특별시");
        }catch(Exception e){
            log.info("Error");
            e.printStackTrace();
        }

    }
}
