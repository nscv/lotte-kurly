package com.lotte.products.dao;

import com.lotte.products.dto.ProductDto;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ProductDao {
    void insertProducts(ProductDto product);
    void updateProduct(ProductDto product);
}
