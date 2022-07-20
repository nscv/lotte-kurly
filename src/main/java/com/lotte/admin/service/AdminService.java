package com.lotte.admin.service;

import com.lotte.coupons.dto.CouponDto;
import com.lotte.coupons.dto.UserCouponInfo;

public interface AdminService {
    void setCoupon(UserCouponInfo userCouponInfo, int userNo);
}
