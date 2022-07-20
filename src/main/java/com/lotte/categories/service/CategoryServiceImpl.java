package com.lotte.categories.service;

import com.lotte.categories.dao.CategoryDao;
import com.lotte.products.dao.ProductDao;
import org.springframework.stereotype.Service;

@Service
public class CategoryServiceImpl implements CategoryService{
    private final CategoryDao categoryDao;

    public CategoryServiceImpl(CategoryDao categoryDao) {
        this.categoryDao = categoryDao;
    }

    @Override
    public String searchCategory(int categoryNo) {
        return categoryDao.searchCategory(categoryNo);
    }
}
