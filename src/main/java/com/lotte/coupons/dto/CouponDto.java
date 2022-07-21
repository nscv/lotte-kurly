package com.lotte.coupons.dto;

public class CouponDto {
    private int couponNo;
    private String couponName;
    private int couponRate;
    private String couponDate;

    public CouponDto(String couponName, int couponRate) {
        this.couponName = couponName;
        this.couponRate = couponRate;
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

    @Override
    public String toString() {
        return "CouponDto{" +
                "couponNo=" + couponNo +
                ", couponName='" + couponName + '\'' +
                ", couponRate=" + couponRate +
                ", couponDate='" + couponDate + '\'' +
                '}';
    }
}
