package com.lotte.products.service;

import com.lotte.products.dto.ProductDto;
import com.lotte.products.dto.ProductListDto;

import java.util.List;

public interface ProductService {
    void insertProducts(ProductDto dto);
    void updateProducts(ProductDto dto);
    public List<ProductListDto> productList();
}
