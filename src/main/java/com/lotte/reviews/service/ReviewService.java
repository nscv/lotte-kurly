package com.lotte.reviews.service;

import com.lotte.reviews.dto.ReviewDto;
import com.lotte.reviews.dto.ReviewInsertDto;

import java.util.List;

public interface ReviewService {
    List<ReviewDto> ReviewList();
    void insertReview(ReviewInsertDto dto);
    void deleteReview(String reviewno);
}
