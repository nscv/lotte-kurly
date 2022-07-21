package com.lotte.reviews.dto;

public class ReviewDto {
    private int reviewNo;
    private int userNo;
    private String userName;
    private String reviewContent;
    private String reviewCreated_at;
    private String reviewModified_at;
    private int reviewRate;
    private int productNo;
    private String reviewTitle;
    private int likeCnt;

    public ReviewDto() {
    }

    public ReviewDto(int reviewNo, int userNo, String userName, String reviewContent, String reviewCreated_at, String reviewModified_at, int reviewRate, int productNo, String reviewTitle, int likeCnt) {
        this.reviewNo = reviewNo;
        this.userNo = userNo;
        this.userName = userName;
        this.reviewContent = reviewContent;
        this.reviewCreated_at = reviewCreated_at;
        this.reviewModified_at = reviewModified_at;
        this.reviewRate = reviewRate;
        this.productNo = productNo;
        this.reviewTitle = reviewTitle;
        this.likeCnt = likeCnt;
    }

    public int getReviewNo() {
        return reviewNo;
    }

    public void setReviewNo(int reviewNo) {
        this.reviewNo = reviewNo;
    }

    public int getUserNo() {
        return userNo;
    }

    public void setUserNo(int userNo) {
        this.userNo = userNo;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getReviewContent() {
        return reviewContent;
    }

    public void setReviewContent(String reviewContent) {
        this.reviewContent = reviewContent;
    }

    public String getReviewCreated_at() {
        return reviewCreated_at;
    }

    public void setReviewCreated_at(String reviewCreated_at) {
        this.reviewCreated_at = reviewCreated_at;
    }

    public String getReviewModified_at() {
        return reviewModified_at;
    }

    public void setReviewModified_at(String reviewModified_at) {
        this.reviewModified_at = reviewModified_at;
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

    public int getLikeCnt() {
        return likeCnt;
    }

    public void setLikeCnt(int likeCnt) {
        this.likeCnt = likeCnt;
    }

    @Override
    public String toString() {
        return "ReviewDto{" +
                "reviewNo=" + reviewNo +
                ", userNo=" + userNo +
                ", userName='" + userName + '\'' +
                ", reviewContent='" + reviewContent + '\'' +
                ", reviewCreated_at='" + reviewCreated_at + '\'' +
                ", reviewModified_at='" + reviewModified_at + '\'' +
                ", reviewRate=" + reviewRate +
                ", productNo=" + productNo +
                ", reviewTitle='" + reviewTitle + '\'' +
                ", likeCnt=" + likeCnt +
                '}';
    }
}