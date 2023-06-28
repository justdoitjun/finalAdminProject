package com.kbstar.Util;

import com.kbstar.gpt.OpenAIClient2;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class ChatGPTTest {

    OpenAIClient2 openAIClient;
    @Test
    void contextLoads() {
        try {
            OpenAIClient2 openAiClinet2 = new OpenAIClient2();
            String input = "Hello World!";
            openAiClinet2.generateCode(input);

        } catch(Exception e){
            e.printStackTrace();
        }
    }

}