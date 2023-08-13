package com.kbstar.smsAuth;

import lombok.extern.slf4j.Slf4j;
import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.util.HashMap;

@Slf4j
public class SMSAuthService {
    public void certifiedPhoneNumber(String phoneNumber, String cerNum) {

        String api_key = "NCSVQFXQFGQYKSPW";
        String api_secret = "OEALUZWYC4IHK3GQMCNUBZAWCQO4AV6B";
        Message coolsms = new Message(api_key, api_secret);

        // 4 params(to, from, type, text) are mandatory. must be filled
        HashMap<String, String> params = new HashMap<String, String>();
        params.put("to", phoneNumber);    // 수신전화번호
        params.put("from", "01093158478");    // 발신전화번호. 테스트시에는 발신,수신 둘다 본인 번호로 하면 됨
        params.put("type", "SMS");
        params.put("text", "3분 안에 입력하세요 : 인증번호는" + "["+cerNum+"]" + "입니다.");
        params.put("app_version", "test app 1.2"); // application name and version



        try {
            JSONObject obj = (JSONObject) coolsms.send(params);
            log.info(obj.toString());
            //System.out.println(obj.toString());
        } catch (CoolsmsException e) {
            log.debug(e.getMessage());
            log.debug(String.valueOf(e.getCode()));
            //System.out.println(e.getMessage());
            //System.out.println(e.getCode());
        }

    }
}

