package com.lotte.categories.service;

import com.lotte.categories.dao.CategoryDao;
import com.lotte.products.dao.ProductDao;

public class CategoryServiceImpl {
    private final CategoryDao categoryDao;

    public CategoryServiceImpl(CategoryDao categoryDao) {
        this.categoryDao = categoryDao;
    }
    String searchCategory(String category){
        return categoryDao.searchCategory(category);
    }
}
