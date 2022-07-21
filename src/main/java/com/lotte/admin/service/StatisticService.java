package com.lotte.admin.service;

import com.lotte.admin.dto.*;

import java.util.List;

public interface StatisticService {
    List<ProductCategoryDto> getProductCountByCategory();
    List<UserGenderDto> getPricesByGender();
    List<UserAgeDto> getPriceByAge();
    List<UserGradeDto> getUsersByUserGrade();
    List<TotalOrderDto> getTotalByDate();
    List<TotalOrderDto> getTotalByYear();
    List<TotalOrderDto> getTotalByMonth();
    int getTotalOrders();
}
