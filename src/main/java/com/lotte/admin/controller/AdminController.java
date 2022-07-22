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

    @GetMapping("/axis")
    public String date(Model model) {
        // TODO: 날짜별 매출 현황 가져오기
        return "admin/axis";
    }

    // TODO: category가 없어졌으므로 PRODUCTS.category_no과 CATEGORIES.category_name을 사용하여 카테고리별로 가져오기
    @GetMapping("/donut")
    public String category(Model model) {
        List<ProductCategoryDto> categoryList = statisticService.getProductCountByCategory();
        model.addAttribute("category", categoryList);
        return "admin/donut";
    }

    @GetMapping("/age")
    public String age(Model model) {
        List<UserAgeDto> ageList = statisticService.getPriceByAge();
        List<UserGenderDto> genderList = statisticService.getPricesByGender();
        model.addAttribute("gender", genderList);
        model.addAttribute("age", ageList);
        return "admin/age-graph";
    }

    @GetMapping("/gender")
    public String gender(Model model) {
        List<UserGenderDto> genderList = statisticService.getPricesByGender();
        model.addAttribute("gender", genderList);
        return "admin/gender-graph";
    }

    // TODO: 데이터만 보낼 때 활성화하여 처리할 것
//    @GetMapping("/gender")
//    public String gender(Model model) {
//        List<UserGenderDto> genderList = statisticService.getPricesByGender();
//        genderList.forEach(System.out::println);
//        model.addAttribute("gender", genderList);
//        return "admin/after-render";
//    }
}
