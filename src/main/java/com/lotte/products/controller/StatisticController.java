package com.lotte.products.controller;

import com.lotte.products.dto.ProductCategoryDto;
import com.lotte.products.dto.UserAgeDto;
import com.lotte.products.dto.UserGenderDto;
import com.lotte.products.service.StatisticService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class StatisticController {

    private static final Logger logger = LoggerFactory.getLogger(ProductController.class);

    private StatisticService statisticService;

    public StatisticController(StatisticService statisticService) {
        this.statisticService = statisticService;
    }

    @RequestMapping("/statistic/category")
    public List<ProductCategoryDto> productCategoryList() {
           return statisticService.getProductCountByCategory();
    }
    @RequestMapping("/statistic/age")
    public List<UserAgeDto> userAgeList() {
        return statisticService.getPriceByAge();
    }

    @RequestMapping("/statistic/gender")
    public List<UserGenderDto> userGenderList() {
        return statisticService.getPricesByGender();
    }

}
