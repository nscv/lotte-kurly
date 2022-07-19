package com.lotte.products.controller;

import com.lotte.products.dto.ProductDto;
import com.lotte.products.service.ProductService;

import org.springframework.web.bind.annotation.*;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@RestController
public class ProductController {

    private static final Logger logger = LoggerFactory.getLogger(ProductController.class);

    private ProductService productService;

    public ProductController(ProductService productService) {
        this.productService = productService;
    }

    @PostMapping("/admin/insert")
    public String insertProduct(ProductDto dto) {
        System.out.println(dto);
        try {
            productService.insertProducts(dto);
        } catch (Exception e) {
            e.printStackTrace();
            return "NOPE";
        }
        return "YES";
    }

    @PostMapping ("/admin/update")
    public String updateProduct(ProductDto dto) {
        System.out.println(dto);
        try {
            productService.updateProducts(dto);
        } catch(Exception e) {
            e.printStackTrace();
            return "NOPE";
        }
        return "YES";
    }
}