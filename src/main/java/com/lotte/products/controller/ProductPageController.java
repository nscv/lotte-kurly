package com.lotte.products.controller;

import com.lotte.products.dto.ProductListDto;
import com.lotte.products.service.ProductService;
import com.lotte.admin.service.StatisticService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductPageController {

    private static final Logger logger = LoggerFactory.getLogger(ProductPageController.class);

    private ProductService productService;
    private StatisticService statisticService;

    public ProductPageController(StatisticService statisticService, ProductService productService) {
        this.statisticService = statisticService;
        this.productService = productService;
    }
    
    @GetMapping("/list")
    public String ProductList(Model model, String category){
        List<ProductListDto> list= productService.productList(category);
        model.addAttribute("list",list);
        return "product/productlist";
    }
    @GetMapping("/lowlist")
    public String ProductLowList(Model model,String category){
        List<ProductListDto>list=productService.productLowList();
        model.addAttribute("list",list);
        return"product/productlist";
    }

    @GetMapping("/highlist")
    public String ProductHighList(Model model,String category){
        List<ProductListDto>list=productService.productHighList();
        model.addAttribute("list",list);
        return"product/productlist";
    }

    @GetMapping("/productdetail")
    public String ProductDetail(){
        return "/productdetail.jsp";
    }
    // TODO: 지금은 테스트용으로 페이지랑 같이 보내지만 List 정보만 보내기
}
