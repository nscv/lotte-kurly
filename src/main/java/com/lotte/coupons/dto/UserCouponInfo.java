package com.lotte.coupons.dto;

public class UserCouponInfo {
    private int couponNo;
    private String couponName;
    private String couponContent;

    private int userNo;

    private int couponRate;

    private String userBirth;
    private String couponDate;
    private boolean userCouponUse;
    public UserCouponInfo(int couponNo, String couponName, String couponContent, int userNo, int couponRate, String userBirth, String couponDate, boolean userCouponUse) {
        this.couponNo = couponNo;
        this.couponName = couponName;
        this.couponContent = couponContent;
        this.userNo = userNo;
        this.couponRate = couponRate;
        this.userBirth = userBirth;
        this.couponDate = couponDate;
        this.userCouponUse = userCouponUse;
    }
    @Override
    public String toString() {
        return "UserCouponInfo{" +
                "couponNo=" + couponNo +
                ", couponName='" + couponName + '\'' +
                ", couponContent='" + couponContent + '\'' +
                ", userNo=" + userNo +
                ", couponRate=" + couponRate +
                ", userBirth='" + userBirth + '\'' +
                ", couponDate='" + couponDate + '\'' +
                ", userCouponUse=" + userCouponUse +
                '}';
    }

    public String getCouponContent() {
        return couponContent;
    }

    public void setCouponContent(String couponContent) {
        this.couponContent = couponContent;
    }

    public String getUserBirth() {
        return userBirth;
    }

    public void setUserBirth(String userBirth) {
        this.userBirth = userBirth;
    }

    public int getCouponNo() {
        return couponNo;
    }

    public void setCouponNo(int couponNo) {
        this.couponNo = couponNo;
    }

    public String getCouponName() {
        return couponName;
    }

    public void setCouponName(String couponName) {
        this.couponName = couponName;
    }

    public int getUserNo() {
        return userNo;
    }

    public void setUserNo(int userNo) {
        this.userNo = userNo;
    }

    public int getCouponRate() {
        return couponRate;
    }

    public void setCouponRate(int couponRate) {
        this.couponRate = couponRate;
    }

    public String getCouponDate() {
        return couponDate;
    }

    public void setCouponDate(String couponDate) {
        this.couponDate = couponDate;
    }

    public boolean isUserCouponUse() {
        return userCouponUse;
    }

    public void setUserCouponUse(boolean userCouponUse) {
        this.userCouponUse = userCouponUse;
    }
}
