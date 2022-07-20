package com.lotte.categories.dao;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CategoryDao {
    String searchCategory(int categoryNo);
}
