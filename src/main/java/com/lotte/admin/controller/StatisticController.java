package com.lotte.admin.controller;

import com.lotte.admin.dto.ProductCategoryDto;
import com.lotte.admin.dto.UserAgeDto;
import com.lotte.admin.dto.UserGenderDto;
import com.lotte.admin.service.StatisticService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/statistic")
public class StatisticController {

    private static final Logger logger = LoggerFactory.getLogger(StatisticController.class);

    private StatisticService statisticService;

    public StatisticController(StatisticService statisticService) {
        this.statisticService = statisticService;
    }

    @RequestMapping("/category")
    public List<ProductCategoryDto> productCategoryList() {
           return statisticService.getProductCountByCategory();
    }
    @RequestMapping("/age")
    public List<UserAgeDto> userAgeList() {
        return statisticService.getPriceByAge();
    }

    @RequestMapping("/gender")
    public List<UserGenderDto> userGenderList() {
        return statisticService.getPricesByGender();
    }

}