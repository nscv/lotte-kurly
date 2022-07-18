package com.lotte.products.service;

import com.lotte.products.dto.ProductCategoryDto;
import com.lotte.products.dto.UserAgeDto;
import com.lotte.products.dto.UserGenderDto;
import com.lotte.products.dto.UserGradeDto;

import java.util.List;

public interface StatisticService {
    List<ProductCategoryDto> getProductCountByCategory();
    List<UserGenderDto> getPricesByGender();
    List<UserAgeDto> getPriceByAge();
    List<UserGradeDto> getUsersByUserGrade();
}
