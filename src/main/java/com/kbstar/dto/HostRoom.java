package com.kbstar.dto;

import lombok.*;

import java.util.Date;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class HostRoom {
    private String hostId;
    private String hostName;
    private String hostPwd;
    private String hostImage;
    private String hostIntro;
    private Integer hostSuper;
    private String hostLang;
    private double hostRate;
    private double hostYear;
    private String hostJob;
    private Integer hostVerified;
    private Date hostRegDate;
    private Date hostDelDate;
    private Integer roomId;
    private Integer roomPrice;
    private String roomName;
    private String roomAddress;
    private String roomLoc;
    private String roomInfo;
    private String roomIntro;
    private Integer roomClean;
    private Integer roomPet;
    private Integer roomWPrice;
    private Integer roomCap;
    private String roomType;
    private long roomLat;
    private long roomLng;
    private String roomImage1;
    private String roomImage2;
    private String roomImage3;
    private String roomImage4;
    private String roomImage5;
    private String roomImage6;
    private Integer roomLikes;


    public HostRoom(Integer roomId, String hostId, Integer roomPrice, String roomName, String roomAddress, String roomLoc) {
        this.roomId = roomId;
        this.hostId = hostId;
        this.roomPrice = roomPrice;
        this.roomName = roomName;
        this.roomAddress = roomAddress;
        this.roomLoc = roomLoc;
    }
}
