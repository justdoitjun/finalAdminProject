

package com.kbstar.room;

import com.kbstar.dto.Room;
import com.kbstar.service.ChatRoomService;
import com.kbstar.service.RoomService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
public class RoomInsertTest {
    @Autowired
    RoomService service;
    @Test
    void contextLoads() {
        try{
            Room room = new Room(-99,"id01",100,"test1", "seoul1","seouldetail2","gaga", "25","25", 623,"한국",25,25,"A.JPG");


            service.register(room);
            service.get();
        }catch(Exception e){
            log.info("Error");
            e.printStackTrace();
        }

    }
}
