package com.lotte.products.dao;

import com.lotte.products.dto.ProductListDto;
import org.apache.ibatis.annotations.Mapper;

import java.util.ArrayList;
import java.util.List;

@Mapper
public interface ProductDao {
    List<ProductListDto> productList();
}
