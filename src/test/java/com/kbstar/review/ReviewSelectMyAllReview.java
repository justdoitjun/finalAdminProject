package com.kbstar.review;

import com.kbstar.service.HostService;
import com.kbstar.service.ReviewService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
public class ReviewSelectMyAllReview {

    @Autowired
    ReviewService reviewService;
    @Test
    void contextLoads() {
        try{
            reviewService.getMyAllReview(7);
        }catch(Exception e){
            log.info("===============");
            log.info("Error");
            e.printStackTrace();
        }
    }
}
