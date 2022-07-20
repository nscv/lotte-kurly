package com.lotte.products.controller;

import com.lotte.admin.dto.ProductCategoryDto;
import com.lotte.admin.dto.UserAgeDto;
import com.lotte.admin.dto.UserGenderDto;
import com.lotte.admin.dto.UserGradeDto;
import com.lotte.admin.service.StatisticService;
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
        list.forEach(System.out::println);
    }

    @Test
    public void testUserAgeList() {
        List<UserAgeDto> list = service.getPriceByAge();
        list.forEach(System.out::println);
    }

    @Test
    public void testUserGenderList() {
        List<UserGenderDto> list = service.getPricesByGender();
        list.forEach(System.out::println);
    }

    @Test
    public void testUserGradeList() {
        List<UserGradeDto> list = service.getUsersByUserGrade();
        list.forEach(System.out::println);
    }
}