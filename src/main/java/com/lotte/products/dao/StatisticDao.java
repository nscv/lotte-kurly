package com.lotte.products.dao;

import com.lotte.products.dto.ProductCategoryDto;
import com.lotte.products.dto.UserAgeDto;
import com.lotte.products.dto.UserGenderDto;
import com.lotte.products.dto.UserGradeDto;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface StatisticDao {
    List<ProductCategoryDto> selectProductCountByCategory();
    List<UserGenderDto> selectPricesByGender();
    List<UserAgeDto> selectPricesByAge();
    List<UserGradeDto> selectUsersByUserGrade();
}
