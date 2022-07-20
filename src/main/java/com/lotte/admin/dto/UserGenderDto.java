package com.lotte.admin.dto;

public class UserGenderDto {
    private boolean userGender;
    private int cnt;
    private int total;

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public boolean isUserGender() {
        return userGender;
    }

    @Override
    public String toString() {
        return "UserGenderDto{" +
                "userGender=" + userGender +
                ", cnt=" + cnt +
                ", total=" + total +
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
