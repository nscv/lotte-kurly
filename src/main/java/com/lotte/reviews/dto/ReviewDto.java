package com.lotte.reviews.dto;

public class ReviewDto {
    private int review_no;
    private int user_no;
    private int product_no;
    private String review_content;
    private String review_created_at;
    private String review_modified_at;
    private int review_rate;

    public int getReview_no() {
        return review_no;
    }

    public void setReview_no(int review_no) {
        this.review_no = review_no;
    }

    public int getUser_no() {
        return user_no;
    }

    public void setUser_no(int user_no) {
        this.user_no = user_no;
    }

    public int getProduct_no() {
        return product_no;
    }

    public void setProduct_no(int product_no) {
        this.product_no = product_no;
    }

    public String getReview_content() {
        return review_content;
    }

    public void setReview_content(String review_content) {
        this.review_content = review_content;
    }

    public String getReview_created_at() {
        return review_created_at;
    }

    public void setReview_created_at(String review_created_at) {
        this.review_created_at = review_created_at;
    }

    public String getReview_modified_at() {
        return review_modified_at;
    }

    public void setReview_modified_at(String review_modified_at) {
        this.review_modified_at = review_modified_at;
    }

    public int getReview_rate() {
        return review_rate;
    }

    public void setReview_rate(int review_rate) {
        this.review_rate = review_rate;
    }

    public ReviewDto(int review_no, int user_no, int product_no, String review_title, String review_content, String review_created_at, String review_modified_at, int review_rate) {
        this.review_no = review_no;
        this.user_no = user_no;
        this.product_no = product_no;
        this.review_content = review_content;
        this.review_created_at = review_created_at;
        this.review_modified_at = review_modified_at;
        this.review_rate = review_rate;
    }

    @Override
    public String toString() {
        return "ReviewDto{" +
                "review_no=" + review_no +
                ", user_no=" + user_no +
                ", product_no=" + product_no +
                ", review_content='" + review_content + '\'' +
                ", review_created_at='" + review_created_at + '\'' +
                ", review_modified_at='" + review_modified_at + '\'' +
                ", review_rate=" + review_rate +
                '}';
    }
}
