package com.kbstar.dto;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Marker {
    private int roomid;
    private String hostid;
    private double roomprice;
    private String roomname;
    private String roomaddress;
    private String roomloc;
    private String roominfo;
    private String roomintro;
    private double roomclean;
    private double roompet;
    private double roomwprice;
    private int roomcap;
    private String roomtype;
    private double roomlat;
    private double roomlng;
    private String roomimage1;
    private String roomimage2;
    private String roomimage3;
    private String roomimage4;
    private String roomimage5;
    private String roomimage6;
    private Integer roomlikes;

    private MultipartFile mimg;
}