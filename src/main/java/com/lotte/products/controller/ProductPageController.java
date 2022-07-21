package com.lotte.products.controller;

import com.lotte.admin.service.StatisticService;
import com.lotte.categories.service.CategoryService;
import com.lotte.products.dto.ProductListDto;
import com.lotte.products.service.ProductService;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/product")
public class ProductPageController {

    private static final Logger logger = LoggerFactory.getLogger(ProductPageController.class);

    private ProductService productService;
    private StatisticService statisticService;
    private CategoryService categoryService;

    public ProductPageController(StatisticService statisticService, ProductService productService,CategoryService categoryService) {
        this.statisticService = statisticService;
        this.productService = productService;
        this.categoryService=categoryService;
    }

    
    @GetMapping("/list")
    public String ProductList(Model model, String category){
        List<ProductListDto> list= productService.productList(category);
        String categoryName=categoryService.searchCategory(Integer.parseInt(category));
        model.addAttribute("category",category);
        model.addAttribute("categoryName",categoryName);
        model.addAttribute("list",list);
        return "product/productlist";
    }


    @GetMapping("/lowlist")
    public String ProductLowList(Model model,String category){
        List<ProductListDto>list=productService.productLowList(category);
        model.addAttribute("list",list);
        model.addAttribute("category",category);
        return"product/productlist";
    }

    @GetMapping("/highlist")
    public String ProductHighList(Model model,String category){
        List<ProductListDto>list=productService.productHighList(category);
        model.addAttribute("list",list);
        model.addAttribute("category",category);
        return"product/productlist";
    }

    @GetMapping("/productdetail")
    public String ProductDetail(Model model,String productNo){
        return "product/productdetail";
    }
    // TODO: 지금은 테스트용으로 페이지랑 같이 보내지만 List 정보만 보내기
}
