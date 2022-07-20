package com.lotte.coupons.controller;

import com.lotte.coupons.dto.CouponDto;
import com.lotte.coupons.dto.UserCouponDto;
import com.lotte.coupons.dto.UserCouponInfo;
import com.lotte.coupons.service.CouponService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/coupon")
public class CouponController {

    private CouponService couponService;

    public CouponController(CouponService couponService) {
        this.couponService = couponService;
    }

    @PostMapping("/list")
    public List<UserCouponInfo> getCouponList(int userNo) {
        return couponService.getCouponByUserNo(userNo);
    }

}
