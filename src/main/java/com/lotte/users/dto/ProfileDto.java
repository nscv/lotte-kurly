package com.lotte.users.dto;

public class ProfileDto {
    int userNo;
    String userNickname;
    String userBirth;
    boolean userGender;
    String userAddress;
    String userPhone;

    @Override
    public String toString() {
        return "ProfileDto{" +
                "userNo=" + userNo +
                ", userNickname='" + userNickname + '\'' +
                ", userBirth='" + userBirth + '\'' +
                ", userGender=" + userGender +
                ", userAddress='" + userAddress + '\'' +
                ", userPhone='" + userPhone + '\'' +
                '}';
    }

    public int getUserNo() {
        return userNo;
    }

    public void setUserNo(int userNo) {
        this.userNo = userNo;
    }

    public String getUserNickname() {
        return userNickname;
    }

    public void setUserNickname(String userNickname) {
        this.userNickname = userNickname;
    }

    public String getUserBirth() {
        return userBirth;
    }

    public void setUserBirth(String userBirth) {
        this.userBirth = userBirth;
    }

    public boolean isUserGender() {
        return userGender;
    }

    public void setUserGender(boolean userGender) {
        this.userGender = userGender;
    }

    public String getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public ProfileDto(int userNo, String userNickname, String userBirth, boolean userGender, String userAddress, String userPhone) {
        this.userNo = userNo;
        this.userNickname = userNickname;
        this.userBirth = userBirth;
        this.userGender = userGender;
        this.userAddress = userAddress;
        this.userPhone = userPhone;
    }
}
