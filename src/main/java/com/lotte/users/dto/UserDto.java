package com.lotte.users.dto;

public class UserDto {
    private String userEmail;
    private String userBirth;

    public UserDto(String userEmail, String userBirth) {
        this.userEmail = userEmail;
        this.userBirth = userBirth;
    }

    @Override
    public String toString() {
        return "UserDto{" +
                "userEmail='" + userEmail + '\'' +
                ", userBirth='" + userBirth + '\'' +
                '}';
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserBirth() {
        return userBirth;
    }

    public void setUserBirth(String userBirth) {
        this.userBirth = userBirth;
    }
}
