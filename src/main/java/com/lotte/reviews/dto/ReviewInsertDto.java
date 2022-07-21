package com.lotte.reviews.dto;

import java.util.Date;

public class ReviewInsertDto {
    private int userNo;
    private String reviewContent;
    private String reviewCreatedAt;
    private String reviewModifiedAt;
    private int reviewRate;
    private int productNo;
    private String reviewTitle;

    public ReviewInsertDto() {
    }

    public ReviewInsertDto(int userNo, String reviewContent, String reviewCreatedAt, String reviewModifiedAt, int reviewRate, int productNo, String reviewTitle) {
        this.userNo = userNo;
        this.reviewContent = reviewContent;
        this.reviewCreatedAt = reviewCreatedAt;
        this.reviewModifiedAt = reviewModifiedAt;
        this.reviewRate = reviewRate;
        this.productNo = productNo;
        this.reviewTitle = reviewTitle;
    }

    public int getUserNo() {
        return userNo;
    }

    public void setUserNo(int userNo) {
        this.userNo = userNo;
    }

    public String getReviewContent() {
        return reviewContent;
    }

    public void setReviewContent(String reviewContent) {
        this.reviewContent = reviewContent;
    }

    public String getReviewCreatedAt() {
        return reviewCreatedAt;
    }

    public void setReviewCreatedAt(String reviewCreatedAt) {
        this.reviewCreatedAt = reviewCreatedAt;
    }

    public String getReviewModifiedAt() {
        return reviewModifiedAt;
    }

    public void setReviewModifiedAt(String reviewModifiedAt) {
        this.reviewModifiedAt = reviewModifiedAt;
    }

    public int getReviewRate() {
        return reviewRate;
    }

    public void setReviewRate(int reviewRate) {
        this.reviewRate = reviewRate;
    }

    public int getProductNo() {
        return productNo;
    }

    public void setProductNo(int productNo) {
        this.productNo = productNo;
    }

    public String getReviewTitle() {
        return reviewTitle;
    }

    public void setReviewTitle(String reviewTitle) {
        this.reviewTitle = reviewTitle;
    }

    @Override
    public String toString() {
        return "ReviewInsertDto{" +
                "userNo=" + userNo +
                ", reviewContent='" + reviewContent + '\'' +
                ", reviewCreatedAt='" + reviewCreatedAt + '\'' +
                ", reviewModifiedAt='" + reviewModifiedAt + '\'' +
                ", reviewRate=" + reviewRate +
                ", productNo=" + productNo +
                ", reviewTitle='" + reviewTitle + '\'' +
                '}';
    }
}