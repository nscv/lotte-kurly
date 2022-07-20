package com.lotte.users.dto;

import java.io.Serializable;

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
                "userNo=" + userNo +
                ", userEmail='" + userEmail + '\'' +
                ", userRole='" + userRole + '\'' +
                ", userGrade='" + userGrade + '\'' +
                ", userNickname='" + userNickname + '\'' +
                ", userBirth='" + userBirth + '\'' +
                ", userGender=" + userGender +
                ", userAddress='" + userAddress + '\'' +
                ", userPhone='" + userPhone + '\'' +
                ", userValid=" + userValid +
                '}';
    }

    public int getUserNo() {
        return userNo;
    }

    public void setUserNo(int userNo) {
        this.userNo = userNo;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserRole() {
        return userRole;
    }

    public void setUserRole(String userRole) {
        this.userRole = userRole;
    }

    public String getUserGrade() {
        return userGrade;
    }

    public void setUserGrade(String userGrade) {
        this.userGrade = userGrade;
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

    public boolean isUserValid() {
        return userValid;
    }

    public void setUserValid(boolean userValid) {
        this.userValid = userValid;
    }

    public UserDto(int userNo, String userEmail, String userRole, String userGrade, String userNickname, String userBirth, boolean userGender, String userAddress, String userPhone, boolean userValid) {
        this.userNo = userNo;
        this.userEmail = userEmail;
        this.userRole = userRole;
        this.userGrade = userGrade;
        this.userNickname = userNickname;
        this.userBirth = userBirth;
        this.userGender = userGender;
        this.userAddress = userAddress;
        this.userPhone = userPhone;
        this.userValid = userValid;
    }
}