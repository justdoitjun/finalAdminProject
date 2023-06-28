package com.kbstar.Util;


import com.kbstar.util.ApiExplorer;
import com.kbstar.util.PropertyPriceApi;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class PropertyPriceTest {

    PropertㅁyPriceApi propertyPriceApi;
    @Test
    void contextLoads() throws Exception{

            //1 : 성공, 2 : DATA코드 오류, 3 : 인증코드 오류, 4 : 일일제한횟수 마감
            String locCode = "11110";
           // propertyPriceApi.generateCode(locCode);

    }

}