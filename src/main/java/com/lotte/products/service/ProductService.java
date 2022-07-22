package com.lotte.products.service;

import com.lotte.products.dto.ProductDto;
import com.lotte.products.dto.ProductImgCategoryDto;
import com.lotte.products.dto.ProductListDto;

import java.util.List;

public interface ProductService {
    void setProduct(ProductDto dto);
    void updateProducts(ProductDto dto);

    List<ProductListDto> productList(ProductListDto productListDto);
    List<ProductListDto> productHighList(ProductListDto productListDto);
    List<ProductListDto> productLowList(ProductListDto productListDto);
    ProductImgCategoryDto productImgCategorylist(String productNo);
    List<ProductListDto> getAllProductList();
    String getProductDetail(String productNo);
    int searchEndPage(String category);
    List<ProductListDto>productDiscountList(ProductListDto productListDto);
    List<ProductListDto> productAmountList(ProductListDto productListDto);

    List<ProductBestDto> productBestList(ProductBestDto productBestDto);
    int searchBestEndPage();
    List<ProductBestDto>productBestAmountList(ProductBestDto productBestDto);
    List<ProductBestDto>productBestHighList(ProductBestDto productBestDto);
    List<ProductBestDto>productBestLowList(ProductBestDto productBestDto);
    List<ProductBestDto>productBestDiscountList(ProductBestDto productBestDto);
    int getMaxProductNo();
}
