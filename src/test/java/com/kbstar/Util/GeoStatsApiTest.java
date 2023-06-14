package com.kbstar.Util;


import com.kbstar.util.GeoStatsApi;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class SelectTest2 {

    GeoStatsApi geoStatsApi;
    @Test
    void contextLoads() {
        try {
            //1 : 성공, 2 : DATA코드 오류, 3 : 인증코드 오류, 4 : 일일제한횟수 마감
            GeoStatsApi geoStatsApi = new GeoStatsApi();
            String x_coor = "965673.8466204873";
            String y_coor = "1931691.4212445277";
            String addr_type = "20";
            geoStatsApi.generateCode(x_coor,y_coor, addr_type);
        } catch(Exception e){
            e.printStackTrace();
        }
    }

}