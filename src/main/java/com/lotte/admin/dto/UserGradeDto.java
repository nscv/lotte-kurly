package com.lotte.admin.dto;

public class UserGradeDto {
    private String userGrade;
    private int cnt;

    @Override
    public String toString() {
        return "UserGradeDto{" +
                "userGrade='" + userGrade + '\'' +
                ", cnt=" + cnt +
                '}';
    }

    public String getUserGrade() {
        return userGrade;
    }

    public void setUserGrade(String userGrade) {
        this.userGrade = userGrade;
    }

    public int getCnt() {
        return cnt;
    }

    public void setCnt(int cnt) {
        this.cnt = cnt;
    }

    public UserGradeDto(String userGrade, int cnt) {
        this.userGrade = userGrade;
        this.cnt = cnt;
    }
}
