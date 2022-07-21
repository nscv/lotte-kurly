package com.lotte.admin.controller;

import com.lotte.admin.service.StatisticService;
import com.lotte.products.service.ProductService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminPageController {

    private static final Logger logger = LoggerFactory.getLogger(AdminPageController.class);

    private StatisticService statisticService;
    private ProductService productService;

    public AdminPageController(StatisticService statisticService, ProductService productService) {
        this.statisticService = statisticService;
        this.productService = productService;
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
    public String productUpdate(int productNo, Model model) {
        return "/admin/product-update";
    }

    @RequestMapping("/register")
    public String registerProduct(int productNo, Model model) {
        model.addAttribute("product", productService.productImgCategorylist(""+productNo));
        return "/admin/product-register";
    }
}
