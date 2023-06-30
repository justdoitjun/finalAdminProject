package com.kbstar.dto;


import lombok.*;

import java.util.Date;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Chatcontents {
    Integer chatContentsId;
    Integer chatRoomId;
    String chatSender;
    String chatContents;
    Date chatDate;
    String hostName;
    String hostImage;
    String guestName;
    String guestImage;


    public Chatcontents(Integer chatContentsId, Integer chatRoomId, String chatSender, String chatContents, Date chatDate) {
        this.chatContentsId = chatContentsId;
        this.chatRoomId = chatRoomId;
        this.chatSender = chatSender;
        this.chatContents = chatContents;
        this.chatDate = chatDate;
    }
}
