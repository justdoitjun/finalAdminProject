package com.kbstar.mapper;


import com.kbstar.dto.Marker;
import com.kbstar.dto.MarkerSearch;
import com.kbstar.dto.Review;
import com.kbstar.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface ReviewMapper extends KBMapper<Integer, Review> {
    public List<Review> selectMyAllReview(Integer roomId);
}