package com.lotte.users.dto;

import java.io.Serializable;

public class UserDto implements Serializable {

    int UserNo;
    String UserEmail;
    String UserPwd;
    String UserRole;
    String UserGrade;
    String UserNickname;
    String UserBirth;
    boolean UserGender;
    String UserAddress;
    String UserPhone;

    public UserDto(int userNo, String userEmail, String userPwd, String userRole, String userGrade, String userNickname, String userBirth, boolean userGender, String userAddress, String userPhone) {
        UserNo = userNo;
        UserEmail = userEmail;
        UserPwd = userPwd;
        UserRole = userRole;
        UserGrade = userGrade;
        UserNickname = userNickname;
        UserBirth = userBirth;
        UserGender = userGender;
        UserAddress = userAddress;
        UserPhone = userPhone;
    }

    public int getUserNo() {
        return UserNo;
    }

    public void setUserNo(int userNo) {
        UserNo = userNo;
    }

    public String getUserEmail() {
        return UserEmail;
    }

    public void setUserEmail(String userEmail) {
        UserEmail = userEmail;
    }

    public String getUserPwd() {
        return UserPwd;
    }

    public void setUserPwd(String userPwd) {
        UserPwd = userPwd;
    }

    public String getUserRole() {
        return UserRole;
    }

    public void setUserRole(String userRole) {
        UserRole = userRole;
    }

    public String getUserGrade() {
        return UserGrade;
    }

    public void setUserGrade(String userGrade) {
        UserGrade = userGrade;
    }

    public String getUserNickname() {
        return UserNickname;
    }

    public void setUserNickname(String userNickname) {
        UserNickname = userNickname;
    }

    public String getUserBirth() {
        return UserBirth;
    }

    public void setUserBirth(String userBirth) {
        UserBirth = userBirth;
    }

    public boolean isUserGender() {
        return UserGender;
    }

    public void setUserGender(boolean userGender) {
        UserGender = userGender;
    }

    public String getUserAddress() {
        return UserAddress;
    }

    public void setUserAddress(String userAddress) {
        UserAddress = userAddress;
    }

    public String getUserPhone() {
        return UserPhone;
    }

    public void setUserPhone(String userPhone) {
        UserPhone = userPhone;
    }

    @Override
    public String toString() {
        return "UserDto{" +
                "UserNo=" + UserNo +
                ", UserEmail='" + UserEmail + '\'' +
                ", UserPwd='" + UserPwd + '\'' +
                ", UserRole='" + UserRole + '\'' +
                ", UserGrade='" + UserGrade + '\'' +
                ", UserNickname='" + UserNickname + '\'' +
                ", UserBirth='" + UserBirth + '\'' +
                ", UserGender=" + UserGender +
                ", UserAddress='" + UserAddress + '\'' +
                ", UserPhone='" + UserPhone + '\'' +
                '}';
    }
}
