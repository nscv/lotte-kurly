package com.lotte.users.dto;

import java.io.Serializable;
import java.util.Date;

public class UserDto implements Serializable {

        int userNo;
    String userEmail;
    String userRole;
    String userGrade;
    String userNickname;
    String userBirth;
    boolean userGender;
    String userAddress;
    String userPhone;
    boolean userValid;

    @Override
    public String toString() {
        return "UserDto{" +
                "userNickname='" + userNickname + '\'' +
                ", userBirth='" + userBirth + '\'' +
                ", userGender=" + userGender +
                ", userAddress='" + userAddress + '\'' +
                ", userPhone='" + userPhone + '\'' +
                '}';
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

    public UserDto(String userNickname, String userBirth, boolean userGender, String userAddress, String userPhone) {
        this.userNickname = userNickname;
        this.userBirth = userBirth;
        this.userGender = userGender;
        this.userAddress = userAddress;
        this.userPhone = userPhone;
    }
}