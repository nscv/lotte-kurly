package com.lotte.admin.controller;

import com.lotte.admin.service.StatisticService;
import com.lotte.categories.service.CategoryService;
import com.lotte.products.dto.ProductDto;
import com.lotte.products.service.ProductService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/admin")
public class AdminPageController {

    private static final Logger logger = LoggerFactory.getLogger(AdminPageController.class);

    private StatisticService statisticService;
    private ProductService productService;
    private CategoryService categoryService;

    public AdminPageController(StatisticService statisticService, ProductService productService, CategoryService categoryService) {
        this.statisticService = statisticService;
        this.productService = productService;
        this.categoryService = categoryService;
    }

    @RequestMapping("/main")
    public String main(Model model) {
        model.addAttribute("category", statisticService.getProductCountByCategory());
        model.addAttribute("gender", statisticService.getPricesByGender());
        model.addAttribute("date", statisticService.getTotalByDate());
        model.addAttribute("age", statisticService.getPriceByAge());
        model.addAttribute("month", statisticService.getTotalByMonth());
        model.addAttribute("year", statisticService.getTotalByYear());
        model.addAttribute("total", statisticService.getTotalOrders());
        return "/admin/admin-main";
    }

    @RequestMapping("/product")
    public String productList(Model model) {
        model.addAttribute("product", productService.getAllProductList());
        return "/admin/product-list";
    }

    @RequestMapping("/update")
    public String productUpdate(String productNo, Model model) {
        model.addAttribute("product", productService.productImgCategorylist(productNo));
        return "/admin/product-update";
    }

    @RequestMapping("/register")
    public String registerProduct(Model model) {
        return "/admin/product-register";
    }

}
