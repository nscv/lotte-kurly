package com.lotte.admin.dto;

public class UserAgeDto {
    private int userAge;
    private int cnt;
    private int total;

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    @Override
    public String toString() {
        return "UserAgeDto{" +
                "userAge=" + userAge +
                ", cnt=" + cnt +
                ", total=" + total +
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
