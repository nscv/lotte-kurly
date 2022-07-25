package com.lotte.reviews.service;

import com.lotte.reviews.dto.ReviewDto;
import com.lotte.reviews.dto.ReviewInsertDto;
import com.lotte.reviews.dto.ReviewUpdateDto;

import java.util.List;

public interface ReviewService {
    List<ReviewDto> ReviewList();
    void insertReview(ReviewInsertDto dto);
    void deleteReview(String reviewno);

    void updateReview(ReviewUpdateDto dto);
}
