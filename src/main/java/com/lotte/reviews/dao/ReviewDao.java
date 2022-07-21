package com.lotte.reviews.dao;

import com.lotte.reviews.dto.ReviewDto;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ReviewDao {
    List<ReviewDto> ReviewList();
    void insertReview(ReviewDto review);
    void updateReview(ReviewDto review);
}
