package com.lotte.products.service;

import com.lotte.products.dao.StatisticDao;
import com.lotte.products.dto.ProductCategoryDto;
import com.lotte.products.dto.UserAgeDto;
import com.lotte.products.dto.UserGenderDto;
import com.lotte.products.dto.UserGradeDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StatisticServiceImpl implements StatisticService {

    @Autowired
    private StatisticDao dao;

    @Override
    public List<ProductCategoryDto> getProductCountByCategory() {
        return dao.selectProductCountByCategory();
    }

    @Override
    public List<UserGenderDto> getPricesByGender() {
        return dao.selectPricesByGender();
    }

    @Override
    public List<UserAgeDto> getPriceByAge() {
        return dao.selectPricesByAge();
    }

    @Override
    public List<UserGradeDto> getUsersByUserGrade() {
        return dao.selectUsersByUserGrade();
    }
}
