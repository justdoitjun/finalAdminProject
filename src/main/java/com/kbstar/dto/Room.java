package com.kbstar.dto;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Room {




        private String roomImage;

        public String getRoomImage() {
            return roomImage;
        }

        public void setRoomImage(String roomImage) {
            this.roomImage = roomImage;
        }
        // 다른 멤버 변수 및 메서드들...

    private Integer roomId;
    private String hostId;
    private Integer roomPrice;
    private String roomName;
    private String roomAddress;
    private String roomAddress2;
    private String roomLoc;
    private String roomLoc2;
    private String roomInfo;
    private String roomIntro;
    private Integer roomClean;
    private Integer roomPet;
    private Integer roomWPrice;
    private Integer roomCap;
    private String roomType;
    private double roomLat;
    private double roomLng;
    private String roomImage1;
    private String roomImage2;
    private String roomImage3;
    private String roomImage4;
    private String roomImage5;
    private String roomImage6;
    private Integer roomLikes;
    private MultipartFile mImg;




    public Room(Integer roomId, String hostId, Integer roomPrice, String roomName, String roomAddress, String roomLoc, String roomLoc2, String roomInfo, String roomIntro,Integer roomCap,String roomType, double roomLat, double roomLng, String roomImage1) {
        this.roomId = roomId;
        this.hostId = hostId;
        this.roomPrice = roomPrice;
        this.roomName = roomName;
        this.roomAddress = roomAddress;
        this.roomLoc = roomLoc;
        this.roomLoc2 = roomLoc2;
        this.roomInfo = roomInfo;
        this.roomIntro =roomIntro;
        this.roomCap = roomCap;
        this.roomType = roomType;
        this.roomLat = roomLat;
        this.roomLng = roomLng;
        this.roomImage1 = roomImage1;

    }



}
