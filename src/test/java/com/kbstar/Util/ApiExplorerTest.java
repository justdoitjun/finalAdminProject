package com.kbstar.Util;


import com.kbstar.util.ApiExplorer;
import com.kbstar.util.GeoStatsApi;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class ApiExplorerTest {

    ApiExplorer apiExplorer;
    @Test
    void contextLoads() {
        try {
            //1 : 성공, 2 : DATA코드 오류, 3 : 인증코드 오류, 4 : 일일제한횟수 마감
            String loc = "서울특별시";
            apiExplorer.generateCode(loc);
        } catch(Exception e){
           e.printStackTrace();
        }
    }

}