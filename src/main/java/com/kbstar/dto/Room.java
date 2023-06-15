package com.kbstar.dto;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Room {
    private Integer roomId;
    private String hostId;
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
    private double roomLat;
    private double roomLng;
    private String roomImage1;
    private String roomImage2;
    private String roomImage3;
    private String roomImage4;
    private String roomImage5;
    private String roomImage6;
    private Integer roomLikes;


    public Room(Integer roomId, String hostId, Integer roomPrice, String roomName, String roomAddress, String roomLoc) {
        this.roomId = roomId;
        this.hostId = hostId;
        this.roomPrice = roomPrice;
        this.roomName = roomName;
        this.roomAddress = roomAddress;
        this.roomLoc = roomLoc;
    }
}
