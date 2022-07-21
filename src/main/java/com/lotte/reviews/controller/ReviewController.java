package com.lotte.reviews.controller;

import com.lotte.products.controller.ProductController;
import com.lotte.reviews.dto.ReviewDto;
import com.lotte.reviews.service.ReviewService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

public class ReviewController {

    private static final Logger logger = LoggerFactory.getLogger(ReviewController.class);

    private ReviewService reviewService;

    public ReviewController(ReviewService reviewService) {
        this.reviewService = reviewService;
    }

    @ResponseBody
    @PostMapping("admin/insert")
    public String insertReview(ReviewDto dto) {
        System.out.println(dto);
        try {
            reviewService.insertReview(dto);
        } catch (Exception e) {
            e.printStackTrace();
            return "NOPE";
        }
        return "YES";
    }

    @ResponseBody
    @PostMapping("/admin/update")
    public String updateReview(ReviewDto dto) {
        System.out.println(dto);
        try {
            reviewService.updateReview(dto);
        } catch (Exception e) {
            e.printStackTrace();
            return "NOPE";
        }
        return "YES";
    }
}
