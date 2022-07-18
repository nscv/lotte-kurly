package com.lotte.products.controller;

import com.lotte.products.dto.ProductListDto;
import com.lotte.products.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.ClassUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;
@Controller
public class ProductController {
    @Autowired
    ProductService service;
    @GetMapping("/productlist")
    public String ProductList(Model model,String category){
        List<ProductListDto>list=service.productList();
        for(ProductListDto d:list){
            System.out.println(d.getProductNo()+" "+d.getProductName()+" "+d.getProductPrice());
        }
        model.addAttribute("list",list);
        return "product/productlist";
    }
}
