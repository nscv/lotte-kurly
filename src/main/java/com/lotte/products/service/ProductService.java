package com.lotte.products.service;

import com.lotte.products.dto.ProductDto;
import com.lotte.products.dto.ProductImgCategoryDto;
import com.lotte.products.dto.ProductListDto;

import java.util.List;

public interface ProductService {
    void insertProducts(ProductDto dto);
    void updateProducts(ProductDto dto);
    public List<ProductListDto> productList(String category);
    public List<ProductListDto> productHighList(String category);
    public List<ProductListDto> productLowList(String category);
    public ProductImgCategoryDto productImgCategorylist(String productNo);
}
