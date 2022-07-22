package com.lotte.products.dao;

import com.lotte.orders.dto.OrderProductsDto;
import com.lotte.products.dto.*;

import org.apache.ibatis.annotations.Mapper;

import java.util.ArrayList;
import java.util.List;

@Mapper
public interface ProductDao {
    List<ProductListDto> selectAllProductList();
    List<ProductListSortDto> productList(ProductCategoryDto productCategoryDto);
    List<ProductListSortDto>productLowList(ProductCategoryDto productCategoryDto);
    List<ProductListSortDto>productHighList(ProductCategoryDto productCategoryDto);
    ProductImgCategoryDto productImgCategorylist(String productNo);
    void insertProducts(ProductDto product);
    void updateProducts(ProductDto product);
    ProductListDto selectProductByProductNo(int productNo);
    String selectProductDetail(String productNo);

    int serarchEndPage(String category);

    List<ProductListSortDto>productDiscountList(ProductCategoryDto productCategoryDto);
    List<ProductListSortDto>productAmountList(ProductCategoryDto productCategoryDto);
    List<ProductBestDto>productBestList(ProductBestDto productBestDto);
    int searchBestEndPage();
    List<ProductBestDto>productBestAmountList(ProductBestDto productBestDto);
    List<ProductBestDto>productBestHighList(ProductBestDto productBestDto);
    List<ProductBestDto>productBestLowList(ProductBestDto productBestDto);
    List<ProductBestDto>productBestDiscountList(ProductBestDto productBestDto);

    List<ProductListDto>productMainDiscountList();
}
