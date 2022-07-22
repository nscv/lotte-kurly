package com.lotte.reviews.dto;

public class ReviewUpdateDto {
    private int reviewNo;
    private String reviewTitle;
    private String reviewContent;
    private String reviewModifiedAt;

    public ReviewUpdateDto(){}

    public ReviewUpdateDto(int reviewNo, String reviewTitle, String reviewContent, String reviewModifiedAt) {
        this.reviewNo = reviewNo;
        this.reviewTitle = reviewTitle;
        this.reviewContent = reviewContent;
        this.reviewModifiedAt = reviewModifiedAt;
    }

    public int getReviewNo() {
        return reviewNo;
    }

    public void setReviewNo(int reviewNo) {
        this.reviewNo = reviewNo;
    }

    public String getReviewTitle() {
        return reviewTitle;
    }

    public void setReviewTitle(String reviewTitle) {
        this.reviewTitle = reviewTitle;
    }

    public String getReviewContent() {
        return reviewContent;
    }

    public void setReviewContent(String reviewContent) {
        this.reviewContent = reviewContent;
    }

    public String getReviewModifiedAt() {
        return reviewModifiedAt;
    }

    public void setReviewModifiedAt(String reviewModifiedAt) {
        this.reviewModifiedAt = reviewModifiedAt;
    }

    @Override
    public String toString() {
        return "ReviewUpdateDto{" +
                "reviewNo=" + reviewNo +
                ", reviewTitle='" + reviewTitle + '\'' +
                ", reviewContent='" + reviewContent + '\'' +
                ", reviewModifiedAt='" + reviewModifiedAt + '\'' +
                '}';
    }
}
