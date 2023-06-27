package com.kbstar.weather;


import com.kbstar.util.GeoStatsApi;
import com.kbstar.util.WebCrawler;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class SelectTest2 {


    WebCrawler webCrawler;
    @Test
    void contextLoads() {
        try {
            //1 : 성공, 2 : DATA코드 오류, 3 : 인증코드 오류, 4 : 일일제한횟수 마감

        } catch(Exception e){
            e.printStackTrace();
        }
    }

}