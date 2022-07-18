package com.lotte.products.controller;

import com.lotte.products.dto.ProductCategoryDto;
import com.lotte.products.dto.UserAgeDto;
import com.lotte.products.dto.UserGenderDto;
import com.lotte.products.dto.UserGradeDto;
import com.lotte.products.service.StatisticService;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.util.List;

@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/applicationContext.xml",
        "file:src/main/webapp/WEB-INF/spring/servlet-context.xml"})
public class StatisticControllerTest {

    @Autowired
    private StatisticService service;

    @Test
    public void testProductCategoryList() {
        List<ProductCategoryDto> list = service.getProductCountByCategory();
        for(ProductCategoryDto c : list)
            System.out.println(c);
    }

    @Test
    public void testUserAgeList() {
        List<UserAgeDto> list = service.getPriceByAge();
        for(UserAgeDto u : list)
            System.out.println(u);
    }

    @Test
    public void testUserGenderList() {
        List<UserGenderDto> list = service.getPricesByGender();
        for(UserGenderDto u : list) {
            System.out.println(u);
        }
    }

    @Test
    public void testUserGradeList() {
        List<UserGradeDto> list = service.getUsersByUserGrade();
        for(UserGradeDto u : list)
            System.out.println(u);
    }
}