package com.lotte.admin.service;

import com.lotte.admin.dao.StatisticDao;
import com.lotte.admin.dto.*;
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

    @Override
    public List<TotalOrderDto> getTotalByDate() {
        return statisticDao.selectTotalByDate();
    }
}
