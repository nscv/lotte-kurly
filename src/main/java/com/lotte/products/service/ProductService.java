package com.lotte.products.service;

import com.lotte.products.dto.*;

import java.util.List;

public interface ProductService {
    void insertProducts(ProductDto dto);
    void updateProducts(ProductDto dto);

    List<ProductListSortDto> productList(ProductCategoryDto productCategoryDto);
    List<ProductListSortDto> productHighList(ProductCategoryDto productCategoryDto);
    List<ProductListSortDto> productLowList(ProductCategoryDto productCategoryDto);
    ProductImgCategoryDto productImgCategorylist(String productNo);
    List<ProductListDto> getAllProductList();
    String getProductDetail(String productNo);
    int searchEndPage(String category);
    List<ProductListSortDto>productDiscountList(ProductCategoryDto productCategoryDto);
    List<ProductListSortDto> productAmountList(ProductCategoryDto productCategoryDto);

    List<ProductBestDto> productBestList(ProductBestDto productBestDto);
    int searchBestEndPage();
    List<ProductBestDto>productBestAmountList(ProductBestDto productBestDto);
    List<ProductBestDto>productBestHighList(ProductBestDto productBestDto);
    List<ProductBestDto>productBestLowList(ProductBestDto productBestDto);
    List<ProductBestDto>productBestDiscountList(ProductBestDto productBestDto);

    List<ProductListDto>productMainDiscountList();
}
