package com.kbstar.util;


import com.google.gson.Gson;
import com.google.gson.JsonObject;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONObject;


import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;


@Slf4j
public class ApiExplorer {

//
    private static final String authkey = "Jpqyy1DA4fqawdxqpVtZLKoSxseqt421epBIWFrANVtjByXx%2F4PHJxPlgo30XvlzmEJC4rqZAv16LefnPmUFOQ%3D%3D";
    private static final String BASE_URL = "http://apis.data.go.kr/1741000/StanReginCd/getStanReginCdList";
    private final HttpClient client;

    public ApiExplorer() {
        client = HttpClient.newBuilder().build();
    }
    //https://www.koreaexim.go.kr/site/program/financial/exchangeJSON?authkey=AUTHKEY1234567890&searchdate=20180102&data=AP01
    public String generateCode(String loc) throws Exception {
        String code = "";

        // JSON 형식의 요청 본문 생성
        JsonObject requestBody = new JsonObject();

        // Gson을 사용하여 JSON 요청 본문을 문자열로 변환
        Gson gson = new Gson();
        String requestBodyString = gson.toJson(requestBody);

        JSONObject obj;
        obj = null;
        try {
            HttpRequest request = HttpRequest.newBuilder()
                    .uri(URI.create(BASE_URL + "?ServiceKey=" + authkey + "&type=xml" + "&pageNo=1"+"&numOfRows=10"+"&flag=Y" + "&locatadd_nm="+loc))
                    .GET()
                    .build();

            HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());

            if (response.statusCode() == 200) {
                code = response.body();

                log.info("==========");
                log.info(code);
                log.info("==========");
            } else {
                log.info("API request failed. Response code: " + response.statusCode());
            }
        } catch (IOException | InterruptedException e) {
            e.printStackTrace();
        }
        return code;
    }
}