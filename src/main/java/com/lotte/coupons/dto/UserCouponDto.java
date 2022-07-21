package com.lotte.coupons.dto;

public class UserCouponDto {
    private int userCouponNo;
    private int userNo;
    private int couponNo;
    private boolean userCouponUse;

    @Override
    public String toString() {
        return "UserCouponDto{" +
                "userCouponNo=" + userCouponNo +
                ", userNo=" + userNo +
                ", couponNo=" + couponNo +
                ", userCouponUse='" + userCouponUse + '\'' +
                '}';
    }

    public int getUserCouponNo() {
        return userCouponNo;
    }

    public void setUserCouponNo(int userCouponNo) {
        this.userCouponNo = userCouponNo;
    }

    public int getUserNo() {
        return userNo;
    }

    public void setUserNo(int userNo) {
        this.userNo = userNo;
    }

    public int getCouponNo() {
        return couponNo;
    }

    public void setCouponNo(int couponNo) {
        this.couponNo = couponNo;
    }

    public boolean getUserCouponUse() {
        return userCouponUse;
    }

    public void setUserCouponUse(boolean userCouponUse) {
        this.userCouponUse = userCouponUse;
    }

    public UserCouponDto(int userNo, int couponNo, boolean userCouponUse) {
        this.userNo = userNo;
        this.couponNo = couponNo;
        this.userCouponUse = userCouponUse;
    }
}
