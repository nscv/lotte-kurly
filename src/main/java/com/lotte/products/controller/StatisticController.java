package com.lotte.products.controller;

import com.lotte.products.dto.ProductCategoryDto;
import com.lotte.products.dto.UserAgeDto;
import com.lotte.products.dto.UserGenderDto;
import com.lotte.products.service.StatisticService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/statistic")
public class StatisticController {

    private static final Logger logger = LoggerFactory.getLogger(ProductController.class);

    @Autowired
    private StatisticService service;

    @RequestMapping("/statistic/category")
    public List<ProductCategoryDto> productCategoryList() {
           return service.getProductCountByCategory();
    }
    @RequestMapping("/statistic/age")
    public List<UserAgeDto> userAgeList() {
        return service.getPriceByAge();
    }

    @RequestMapping("/statistic/gender")
    public List<UserGenderDto> userGenderList() {
        return service.getPricesByGender();
    }

}
