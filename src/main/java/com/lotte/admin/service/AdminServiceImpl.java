package com.lotte.admin.service;

import com.lotte.admin.dao.AdminDao;
import com.lotte.coupons.dto.UserCouponDto;
import com.lotte.coupons.dto.UserCouponInfo;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService{
    private AdminDao adminDao;

    public AdminServiceImpl(AdminDao adminDao) {
        this.adminDao = adminDao;
    }
    public void setCouponInfo(UserCouponInfo userCouponInfo) {
        adminDao.insertCoupons(userCouponInfo);
    }
    public void setUserCoupon(UserCouponDto userCouponDto) {
        adminDao.insertUserCoupon(userCouponDto);
    }
    @Override
    public void setCoupon(UserCouponInfo userCouponInfo, int userNo) {
        // TODO: 두 작업의 트랜잭션 처리 필요
        this.setCouponInfo(userCouponInfo);
        this.setUserCoupon(new UserCouponDto(userNo, userCouponInfo.getCouponNo(), false));
    }
}
