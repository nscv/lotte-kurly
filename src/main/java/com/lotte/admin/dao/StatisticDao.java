package com.lotte.admin.dao;

import com.lotte.admin.dto.ProductCategoryDto;
import com.lotte.admin.dto.UserAgeDto;
import com.lotte.admin.dto.UserGenderDto;
import com.lotte.admin.dto.UserGradeDto;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface StatisticDao {
    List<ProductCategoryDto> selectProductCountByCategory();
    List<UserGenderDto> selectPricesByGender();
    List<UserAgeDto> selectPricesByAge();
    List<UserGradeDto> selectUsersByUserGrade();
}
