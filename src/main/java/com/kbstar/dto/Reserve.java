package com.kbstar.dto;

import lombok.*;

import java.util.Date;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Reserve {


    private Integer reserveId;
    private String guestId;
    private Date reserveCheckIn;
    private Date reserveCheckOut;
    private long reservePrice;
    private long reserveConfirm;
    private Integer reserveCal;
    private Integer reserveCap;
    private String reserveStatus;
    private long reservePayRate;
    private long reservePayAmount;
    private Date reservePayDate;
    private String reservePayType;
    private long reserveDiscount;
    private long reservePoint;
    private String reserveBank;
    private long reserveAccHolder;
    private String reserveApi;
    private Integer reserveRefund;
    private Integer reserveReply;
    private Date refundDate; // 서지영


}
