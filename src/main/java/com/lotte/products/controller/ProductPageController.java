package com.lotte.products.controller;

import com.lotte.products.dto.ProductListDto;
import com.lotte.products.service.ProductService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class ProductPageController {

    private static final Logger logger = LoggerFactory.getLogger(ProductController.class);

    private ProductService productService;

    public ProductPageController(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping("/productlist")
    public String ProductList(Model model, String category){
        List<ProductListDto> list= productService.productList();
        for(ProductListDto d:list){
            System.out.println(d.getProductNo()+" "+d.getProductName()+" "+d.getProductPrice());
        }
        model.addAttribute("list",list);
        return "product/productlist";
    }
}
