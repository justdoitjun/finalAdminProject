package com.kbstar.smsAuth;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class SMSAuthTests {

    @Test
    void contextLoads() {
        SMSAuthController smsAuth = new SMSAuthController();
        smsAuth.sendOne("01093158478");
    }

}
