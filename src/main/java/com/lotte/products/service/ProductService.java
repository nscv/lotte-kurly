package com.lotte.products.service;

import com.lotte.products.dto.ProductDto;
import com.lotte.products.dto.ProductImgCategoryDto;
import com.lotte.products.dto.ProductListDto;

import java.util.List;

public interface ProductService {
    void insertProducts(ProductDto dto);
    void updateProducts(ProductDto dto);
    List<ProductListDto> productList(String category);
    List<ProductListDto> productHighList(String category);
    List<ProductListDto> productLowList(String category);
    ProductImgCategoryDto productImgCategorylist(String productNo);
    List<ProductListDto> getAllProductList();
}
