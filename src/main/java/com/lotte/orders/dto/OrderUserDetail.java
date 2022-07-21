package com.lotte.orders.dto;

public class OrderUserDetail {

    private String userNickname;
    private String userPhone;
    private String userEmail;
    private String userAddress;

    public String getUserNickname() {
        return userNickname;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public String getUserAddress() {
        return userAddress;
    }

    public void setUserNickname(String userNickname) {
        this.userNickname = userNickname;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress;
    }
}
