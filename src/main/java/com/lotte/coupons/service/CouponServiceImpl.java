package com.lotte.coupons.service;

import com.lotte.coupons.dao.CouponDao;
import com.lotte.coupons.dto.UserCouponInfo;
import org.springframework.stereotype.Service;

import java.util.List;
import org.springframework.stereotype.Service;

@Service
public class CouponServiceImpl implements CouponService {

    private CouponDao couponDao;

    public CouponServiceImpl(CouponDao couponDao) {
        this.couponDao = couponDao;
    }

    @Override
    public List<UserCouponInfo> getCouponByUserNo(int userNo) {
        return couponDao.selectCouponByUser(userNo);
    }
}
