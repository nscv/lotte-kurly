package com.lotte.reviews.controller;

import com.lotte.reviews.service.ReviewService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;

public class ReviewPageController {

    private static final Logger logger = LoggerFactory.getLogger(ReviewController.class);

    private ReviewService reviewService;

    public ReviewPageController(ReviewService reviewService) { this.reviewService = reviewService; }


}
