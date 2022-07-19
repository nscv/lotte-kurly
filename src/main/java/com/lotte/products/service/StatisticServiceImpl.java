package com.lotte.products.service;

import com.lotte.products.dao.StatisticDao;
import com.lotte.products.dto.ProductCategoryDto;
import com.lotte.products.dto.UserAgeDto;
import com.lotte.products.dto.UserGenderDto;
import com.lotte.products.dto.UserGradeDto;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StatisticServiceImpl implements StatisticService {

    private StatisticDao statisticDao;

    public StatisticServiceImpl(StatisticDao statisticDao) {
        this.statisticDao = statisticDao;
    }

    @Override
    public List<ProductCategoryDto> getProductCountByCategory() {
        return statisticDao.selectProductCountByCategory();
    }

    @Override
    public List<UserGenderDto> getPricesByGender() {
        return statisticDao.selectPricesByGender();
    }

    @Override
    public List<UserAgeDto> getPriceByAge() {
        return statisticDao.selectPricesByAge();
    }

    @Override
    public List<UserGradeDto> getUsersByUserGrade() {
        return statisticDao.selectUsersByUserGrade();
    }
}
