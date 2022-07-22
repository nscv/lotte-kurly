package com.lotte.reviews.service;

import com.lotte.reviews.dao.ReviewDao;
import com.lotte.reviews.dto.ReviewDto;
import com.lotte.reviews.dto.ReviewInsertDto;
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
    public void insertReview(ReviewInsertDto dto) {
        reviewDao.insertReview(dto);
    }

    public void deleteReview(String reviewno){
        reviewDao.deleteReview(reviewno);
    }

}
