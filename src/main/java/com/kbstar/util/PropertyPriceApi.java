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
public class  PropertyPriceApi{

    //
    private static final String authkey = "Jpqyy1DA4fqawdxqpVtZLKoSxseqt421epBIWFrANVtjByXx%2F4PHJxPlgo30XvlzmEJC4rqZAv16LefnPmUFOQ%3D%3D";
    private static final String BASE_URL = "http://openapi.molit.go.kr:8081/OpenAPI_ToolInstallPackage/service/rest/RTMSOBJSvc/getRTMSDataSvcAptTrade";
    private final HttpClient client;

    public PropertyPriceApi() {
        client = HttpClient.newBuilder().build();
    }
    //https://www.koreaexim.go.kr/site/program/financial/exchangeJSON?authkey=AUTHKEY1234567890&searchdate=20180102&data=AP01
    public String generateCode(String locCode) throws Exception {
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
                    .uri(URI.create(BASE_URL + "?LAWD_CD="+locCode+"&DEAL_YMD="+"201512"+"&serviceKey="+ authkey))
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
        } catch (Exception e) {
            e.printStackTrace();
        }
        return code;
    }
}