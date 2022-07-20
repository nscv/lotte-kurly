package com.lotte.admin.service;

import com.lotte.admin.dto.ProductCategoryDto;
import com.lotte.admin.dto.UserAgeDto;
import com.lotte.admin.dto.UserGenderDto;
import com.lotte.admin.dto.UserGradeDto;

import java.util.List;

public interface StatisticService {
    List<ProductCategoryDto> getProductCountByCategory();
    List<UserGenderDto> getPricesByGender();
    List<UserAgeDto> getPriceByAge();
    List<UserGradeDto> getUsersByUserGrade();
}
