package com.lotte.admin.dao;

import com.lotte.admin.dto.*;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface StatisticDao {
    List<ProductCategoryDto> selectProductCountByCategory();
    List<UserGenderDto> selectPricesByGender();
    List<UserAgeDto> selectPricesByAge();
    List<UserGradeDto> selectUsersByUserGrade();
    List<TotalOrderDto> selectTotalByDate();
    List<TotalOrderDto> selectTotalByYear();
    List<TotalOrderDto> selectTotalByMonth();
}
