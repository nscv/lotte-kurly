package com.lotte.users.dto;

public class InsertUser {

    private String userEmail;
    private Integer userNo;
    private Integer cartNo;

    public InsertUser(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public Integer getUserNo() {
        return userNo;
    }

    public void setUserNo(Integer userNo) {
        this.userNo = userNo;
    }

    public Integer getCartNo() {
        return cartNo;
    }

    public void setCartNo(Integer cartNo) {
        this.cartNo = cartNo;
    }
}
