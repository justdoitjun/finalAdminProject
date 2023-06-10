package com.kbstar.mapper;


import com.kbstar.dto.HostRoomReserveReview;
import com.kbstar.dto.Review;
import com.kbstar.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface ReserveMapper extends KBMapper<Integer, Review> {
    public List<HostRoomReserveReview> selectHostGuestReserve(String hostId, String guestId);
}