package com.lotte.products.dao;

import com.lotte.orders.dto.OrderProductsDto;
import com.lotte.products.dto.ProductBestDto;
import com.lotte.products.dto.ProductDto;
import com.lotte.products.dto.ProductImgCategoryDto;
import com.lotte.products.dto.ProductListDto;

import org.apache.ibatis.annotations.Mapper;

import java.util.ArrayList;
import java.util.List;

@Mapper
public interface ProductDao {
    List<ProductListDto> productList(ProductListDto productListDto);
    List<ProductListDto>productLowList(ProductListDto productListDto);
    List<ProductListDto>productHighList(ProductListDto productListDto);
    ProductImgCategoryDto productImgCategorylist(String productNo);
    void insertProducts(ProductDto product);
    void updateProducts(ProductDto product);
    ProductListDto selectProductByProductNo(int productNo);
    String selectProductDetail(String productNo);

    int serarchEndPage(String category);

    List<ProductListDto>productDiscountList(ProductListDto productListDto);
    List<ProductListDto>productAmountList(ProductListDto productListDto);
    List<ProductBestDto>productBestList(ProductBestDto productBestDto);
    int searchBestEndPage();
    List<ProductBestDto>productBestAmountList(ProductBestDto productBestDto);
    List<ProductBestDto>productBestHighList(ProductBestDto productBestDto);
    List<ProductBestDto>productBestLowList(ProductBestDto productBestDto);
    List<ProductBestDto>productBestDiscountList(ProductBestDto productBestDto);
}
