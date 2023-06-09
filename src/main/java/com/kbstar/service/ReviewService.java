package com.kbstar.service;


import com.kbstar.dto.ResponseReview;
import com.kbstar.dto.Review;
import com.kbstar.frame.KBService;
import com.kbstar.mapper.ReviewMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
@Component
public class ReviewService implements KBService<Integer, Review> {

    @Autowired
    ReviewMapper mapper;

    @Override
    public void register(Review review) throws Exception {
        mapper.insert(review);
    }

    @Override
    public void remove(Integer i) throws Exception {
        mapper.delete(i);
    }

    @Override
    public void modify(Review review) throws Exception {
        mapper.update(review);
    }

    @Override
    public Review get(Integer i) throws Exception {
        return mapper.select(i);
    }

    @Override
    public List<Review> get() throws Exception {
        return mapper.selectall();
    }

    public Object getMyAllReview(Integer roomId) throws Exception {
        return mapper.selectMyAllReview(roomId);
    }


}