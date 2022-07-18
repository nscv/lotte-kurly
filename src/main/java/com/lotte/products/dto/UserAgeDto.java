package com.lotte.products.dto;

public class UserAgeDto {
    private int userAge;
    private int cnt;

    @Override
    public String toString() {
        return "UserAgeDto{" +
                "userAge=" + userAge +
                ", cnt=" + cnt +
                '}';
    }

    public int getUserAge() {
        return userAge;
    }

    public void setUserAge(int userAge) {
        this.userAge = userAge;
    }

    public int getCnt() {
        return cnt;
    }

    public void setCnt(int cnt) {
        this.cnt = cnt;
    }

    public UserAgeDto(int userAge, int cnt) {
        this.userAge = userAge;
        this.cnt = cnt;
    }
}
