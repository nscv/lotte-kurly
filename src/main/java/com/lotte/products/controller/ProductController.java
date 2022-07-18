package com.lotte.products.controller;

import com.lotte.products.dto.ProductDto;
import com.lotte.products.service.ProductService;
import com.lotte.products.dto.ProductListDto;

import org.springframework.ui.Model;
import org.springframework.util.ClassUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


@RequestMapping("/admin")
@Controller
public class ProductController {

    private static final Logger logger = LoggerFactory.getLogger(ProductController.class);

    @Autowired
    private ProductService service;

    @GetMapping("/productlist")
    public String ProductList(Model model,String category){
        List<ProductListDto>list=service.productList();
        for(ProductListDto d:list){
            System.out.println(d.getProductNo()+" "+d.getProductName()+" "+d.getProductPrice());
        }
        model.addAttribute("list",list);
        return "product/productlist";
    }

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

