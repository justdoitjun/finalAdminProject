package com.kbstar.dto;


import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Chatroom {
    Integer chatRoomId;
    String hostId;
    String guestId;
    String guestImage;
    String guestName;
    String hostImage;
    String hostName;
}
