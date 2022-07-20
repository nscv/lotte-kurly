package com.lotte.admin.dao;

import com.lotte.coupons.dto.UserCouponDto;
import com.lotte.coupons.dto.UserCouponInfo;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AdminDao {
    void insertCoupons(UserCouponInfo userCouponInfo);
    void insertUserCoupon(UserCouponDto userCouponDto);
}
