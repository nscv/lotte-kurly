package com.lotte.reviews.service;

import com.lotte.reviews.dto.ReviewDto;

import java.util.List;

public interface ReviewService {
    List<ReviewDto> ReviewList();
    void insertReview(ReviewDto review);
    void updateReview(ReviewDto review);
}
