package com.kbstar.dto;

import lombok.*;

import java.util.Date;

@Data
public class Board {
    private long boardId;
    private String guestId;
    private String boardType;
    private String boardTitle;
    private String boardContents;
    private Integer boardReply;
    private Date boardDate;
    private Date boardUpdate;
    private Integer boardReserve;
    private String boardImage1;
    private String boardImage2;
    private String boardImage3;

}
