package com.lotte.products.service;

import com.lotte.products.dto.ProductDto;

public interface ProductService {
    void insertProducts(ProductDto dto);
    void updateProducts(ProductDto dto);
}
