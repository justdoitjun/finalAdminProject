package com.kbstar.controller;

import com.kbstar.dto.*;
import com.kbstar.service.*;
import com.kbstar.util.DateUtil;
import com.kbstar.util.FileUploadUtil;
import com.kbstar.util.GeoStatsApi;
import com.kbstar.util.WebCrawler;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import com.kbstar.dto.Room;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Slf4j
// 일반적인 컨트롤러는 화면jsp파일을 return 해 주니, ajax 요청은 이걸 이용하자-@RestController
@RestController
public class AjaxImplController {

    @Autowired
    MarkerService markerService;

    @Autowired
    HostService hostService;
    @Autowired
    ReviewService reviewService;
    @Autowired
    ReserveService reserveService;
    @Autowired
    RoomService roomService;

    @Autowired
    BCryptPasswordEncoder encoder= new BCryptPasswordEncoder();

//    @RequestMapping("/reserved")
//    public List<Reserve> reserved(int id) throws Exception {
//        List<Reserve> reserved;
//        reserved = reserveService.reserveDate(id);
//
//        return reserved;
//    }


    @Value("${uploadimgdir}")
    String imgdir;



    @RequestMapping("/saveimg")
    public String saveimg(MultipartFile file){
        String filename = file.getOriginalFilename();
        FileUploadUtil.saveFile(file, imgdir);
        return filename;
    }



    @RequestMapping("/checkId")
    public Object checkid(String hostId) throws Exception {
        int result = 0;
        Host host = null;
        host = hostService.get(hostId);
        if(host != null){
            result=1;
        }
        return result;
    }

    @RequestMapping("/markers")
    public Object markers(String loc)  {
        List<Room> list = null;
        try {
            list = markerService.getLoc(loc);
        } catch (Exception e) {

            e.printStackTrace();
        }

        JSONArray ja = new JSONArray();
        for(Room obj:list){
            JSONObject jo = new JSONObject();
            jo.put("id",obj.getRoomId());
            jo.put("host",obj.getHostId());
            jo.put("price",obj.getRoomPrice());
            jo.put("name",obj.getRoomName());
            jo.put("address",obj.getRoomAddress());
            jo.put("loc",obj.getRoomLoc());
            jo.put("loc2",obj.getRoomLoc2());
            jo.put("lat",obj.getRoomLat());
            jo.put("lng",obj.getRoomLng());
            jo.put("img",obj.getRoomImage1());
            jo.put("cap",obj.getRoomCap());
            jo.put("info",obj.getRoomInfo());
            jo.put("intro",obj.getRoomIntro());


            ja.add(jo);
        }
        return ja;
    }


    @RequestMapping("/smsAuth")
    public void smsAuth( String phoneNumber) throws Exception {
        SMSAuthController smsAuth = new SMSAuthController();
        smsAuth.sendOne("01093158478");
    }

    // 참고 url - https://velog.io/@duawldms/spring-email-%EC%9E%84%EC%8B%9C%EB%B9%84%EB%B0%80%EB%B2%88%ED%98%B8-%EB%B0%9C%EA%B8%89
//    @GetMapping(value = "/findPwd",produces = {MediaType.APPLICATION_JSON_VALUE})
//    public @ResponseBody String findPw(String guestId, Guest guest) throws Exception {
//
//        String result = null;
//
//        //회원정보 불러오기
//        Guest guest1 = guestService.get(guestId);
//        System.out.println(guest1);
//
//        //가입된 이메일이 존재한다면 이메일 전송
//        if(guest1!=null) {
//
//            //임시 비밀번호 생성(UUID이용)
//            String tempPw= UUID.randomUUID().toString().replace("-", "");//-를 제거
//            tempPw = tempPw.substring(0,10);//tempPw를 앞에서부터 10자리 잘라줌
//
//            guest1.setGuestPwd(tempPw);//임시 비밀번호 담기
//            MailUtil mail = new MailUtil(); //메일 전송하기
//            mail.sendEmail(guest1);
//
//            //회원 비밀번호를 암호화하면 vo객체에 다시 저장
//            guest1.setGuestPwd(encoder.encode(guest1.getGuestPwd()));
//            guestService.updatePwd(guest1);
//
//
//            result="true";
//
//
//        }else {
//            result="false";
//        }
//        return result;
//    }

    @RequestMapping("/reviewLoad")
    public Object reviewLoad(Integer roomId) throws Exception{
        List<HostRoomReserveReview> list = new ArrayList<>();
        list = (List<HostRoomReserveReview>) reviewService.getMyRoomReviews(roomId);
        return list;
    }

    @RequestMapping("/roomLoad")
    public Object roomLoad(String hostId) throws Exception{
        List<HostRoomReserveReview> list = new ArrayList<>();
        list = (List<HostRoomReserveReview>) hostService.getMyAllRoom(hostId);
        return list;
    }


    @RequestMapping("/reserveHostGuestLoad")
    public Object reserveHostGuestLoad(String hostId, String guestId) throws Exception{
        List<HostRoomReserveReview> list = new ArrayList<>();
        list = reserveService.getHostGuestReserve(hostId, guestId);
        return list;
    }

    @RequestMapping("/getcal2")
    public Object getcal2(){
        List<Cal> list= new ArrayList<>();
        list.add(new Cal("title1","2023-05-01","2023-05-05","1","/cust"));
        list.add(new Cal("aa","2023-05-03","2023-05-06","2","/cust"));
        list.add(new Cal("ss","2023-05-06","2023-05-09","3","/cust"));
        list.add(new Cal("ss","2023-05-10","2023-05-12","3","/cust"));
        list.add(new Cal("ss","2023-05-16","2023-05-19","2","/cust"));
        // Java Object ---> JSON
        // JSON(JavaScript Object Notation)
        // [{},{},{},...]
        JSONArray ja = new JSONArray();
        for(Cal obj:list){
            JSONObject jo = new JSONObject();

            jo.put("title",obj.getTitle());
            jo.put("start",obj.getStart());
            jo.put("end", DateUtil.getDateStr(obj.getEnd()));

            if(obj.getDiv().equals("1")){
                jo.put("color","green");
            }else if(obj.getDiv().equals("2")){
                jo.put("color","blue");
            }else{
                jo.put("color","red");
            }

            jo.put("url",obj.getUrl());

            ja.add(jo);
        }
        return ja;
    }

    @RequestMapping("/reverseAddress")
    public String reverseAddress(String x_coor, String y_coor) throws Exception{
        GeoStatsApi geoStatsApi = new GeoStatsApi();
        String result = geoStatsApi.generateCode(x_coor, y_coor, "20");
        return result;
    }

    @RequestMapping("/weather")
    public Object Weather(String loc) throws Exception{
        WebCrawler webCrawler = new WebCrawler(loc);
        Object result = webCrawler.crawlWeather();
        return result;
    }

    @RequestMapping("/hostRoom")
    public Object hostRoom(String hostId) throws Exception{
        List<Room> roomList = roomService.getHostRoom(hostId);
        JSONArray jsonArray = new JSONArray();
        for(Room obj:roomList){
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("body", obj);
            jsonArray.add(jsonObject);
        }
        return roomList;
    }




}