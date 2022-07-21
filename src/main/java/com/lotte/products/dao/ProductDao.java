package com.lotte.products.dao;

import com.lotte.orders.dto.OrderProductsDto;
import com.lotte.products.dto.ProductDto;
import com.lotte.products.dto.ProductImgCategoryDto;
import com.lotte.products.dto.ProductListDto;

import org.apache.ibatis.annotations.Mapper;

import java.util.ArrayList;
import java.util.List;

@Mapper
public interface ProductDao {
    List<ProductListDto> selectAllProductList();
    List<ProductListDto> productList(String category);
    List<ProductListDto>productLowList(String category);
    List<ProductListDto>productHighList(String category);
    ProductImgCategoryDto productImgCategorylist(String productNo);
    void insertProducts(ProductDto product);
    void updateProducts(ProductDto product);
    ProductListDto selectProductByProductNo(int productNo);
    String selectProductDetail(String productNo);
}
