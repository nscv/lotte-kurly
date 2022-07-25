package com.lotte.reviews.dao;

import com.lotte.reviews.dto.ReviewDto;
import com.lotte.reviews.dto.ReviewInsertDto;
import com.lotte.reviews.dto.ReviewUpdateDto;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ReviewDao {
    List<ReviewDto> ReviewList();
    void insertReview(ReviewInsertDto dto);
    void deleteReview(String reviewno);
    void updateReview(ReviewUpdateDto dto);
}
