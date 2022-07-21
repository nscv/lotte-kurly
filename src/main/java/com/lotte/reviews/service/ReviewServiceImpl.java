package com.lotte.reviews.service;

import com.lotte.reviews.dao.ReviewDao;
import com.lotte.reviews.dto.ReviewDto;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReviewServiceImpl implements ReviewService {

    private ReviewDao reviewDao;

    public ReviewServiceImpl(ReviewDao reviewDao){this.reviewDao = reviewDao;}

    @Override
    public List<ReviewDto> ReviewList() {
        return reviewDao.ReviewList();
    }

    @Override
    public void insertReview(ReviewDto review) {

    }

    @Override
    public void updateReview(ReviewDto review) {

    }
}
