package com.lotte.products.controller;

import com.lotte.products.dto.ProductDto;
import com.lotte.products.service.ProductService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@RequestMapping("/admin")
@Controller
public class ProductController {

    private static final Logger logger = LoggerFactory.getLogger(ProductController.class);

    @Autowired
    private ProductService service;

    @RequestMapping("/main")
    public String adminMain() {
        return "admin/adminMain";
    }
    @ResponseBody
    @PostMapping("/insert")
    public String insertProduct(ProductDto dto) {
        System.out.println(dto);
        try {
            service.insertProducts(dto);
        } catch (Exception e) {
            e.printStackTrace();
            return "NOPE";
        }
        return "YES";
    }

    @ResponseBody
    @PostMapping ("/update")
    public String updateProduct(ProductDto dto) {
        System.out.println(dto);
        try {
            service.updateProducts(dto);
        } catch(Exception e) {
            e.printStackTrace();
            return "NOPE";
        }
        return "YES";
    }

}

