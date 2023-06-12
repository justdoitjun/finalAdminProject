package com.kbstar.dto;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Review {
    private Integer reviewId;
    private Integer roomId;
    private Integer reserveId;
    private String guestId;
    private long reviewRate;
    private String reviewContents1;
    private String reviewContents2;
    private String reviewContents3;
    private String reviewContents4;
    private Integer reviewHidden;
    private String guestId2;




}
