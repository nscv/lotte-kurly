package com.lotte.coupons.service;

import com.lotte.coupons.dto.UserCouponInfo;

import java.util.List;

public interface CouponService {
    List<UserCouponInfo> getCouponByUserNo(int userNo);
}
