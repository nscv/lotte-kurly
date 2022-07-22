package com.lotte.admin.controller;

import com.lotte.admin.dto.ProductCategoryDto;
import com.lotte.admin.dto.UserAgeDto;
import com.lotte.admin.dto.UserGenderDto;
import com.lotte.admin.service.AdminService;
import com.lotte.admin.service.StatisticService;
import com.lotte.coupons.dto.UserCouponInfo;
import com.lotte.products.dto.ProductDto;
import com.lotte.products.service.ProductService;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/admin")
public class AdminController {

    private AdminService adminService;
    private ProductService productService;
    private StatisticService statisticService;

    public AdminController(AdminService adminService, ProductService productService, StatisticService statisticService) {
        this.adminService = adminService;
        this.productService = productService;
        this.statisticService = statisticService;
    }

    @PostMapping("/coupon/insert")
    public boolean setCoupon(UserCouponInfo userCouponInfo, int userNo) {
        try {
            adminService.setCoupon(userCouponInfo, userNo);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    @PostMapping("/product/insert")
    public boolean insertProduct(ProductDto dto) {
        try {
            productService.setProduct(dto);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    @PostMapping("/product/update")
    public boolean updateProduct(ProductDto dto) {
        try {
            productService.updateProducts(dto);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }
}
