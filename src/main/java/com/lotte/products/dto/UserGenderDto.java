package com.lotte.products.dto;

public class UserGenderDto {
    private boolean userGender;
    private int cnt;

    @Override
    public String toString() {
        return "UserCategoryDto{" +
                ", userGender=" + userGender +
                ", cnt=" + cnt +
                '}';
    }

    public boolean getUserGender() {
        return userGender;
    }

    public void setUserGender(boolean userGender) {
        this.userGender = userGender;
    }

    public int getCnt() {
        return cnt;
    }

    public void setCnt(int cnt) {
        this.cnt = cnt;
    }

    public UserGenderDto(boolean userGender, int cnt) {
        this.userGender = userGender;
        this.cnt = cnt;
    }
}
