package com.lotte.products.controller;

import com.lotte.products.dto.ProductDto;
import com.lotte.products.service.ProductService;
import com.lotte.products.dto.ProductListDto;

import com.lotte.products.service.ProductServiceImpl;
import org.springframework.ui.Model;
import org.springframework.util.ClassUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


@RestController
public class ProductController {

    private static final Logger logger = LoggerFactory.getLogger(ProductController.class);

    private ProductService productService;

    public ProductController(ProductService productService) {
        this.productService = productService;
    }

    @ResponseBody
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

    @ResponseBody
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