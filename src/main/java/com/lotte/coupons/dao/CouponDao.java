package com.lotte.coupons.dao;

import com.lotte.coupons.dto.UserCouponInfo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CouponDao {
    List<UserCouponInfo> selectCouponByUser(int userNo);
}
