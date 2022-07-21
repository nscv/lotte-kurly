package com.lotte.products.service;

import com.lotte.products.dto.ProductBestDto;
import com.lotte.products.dto.ProductDto;
import com.lotte.products.dto.ProductImgCategoryDto;
import com.lotte.products.dto.ProductListDto;

import java.util.List;

public interface ProductService {
    void insertProducts(ProductDto dto);
    void updateProducts(ProductDto dto);
    public ProductImgCategoryDto productImgCategorylist(String productNo);
    String getProductDetail(String productNo);
    public List<ProductListDto> productList(ProductListDto productListDto);
    public List<ProductListDto> productHighList(ProductListDto productListDto);
    public List<ProductListDto> productLowList(ProductListDto productListDto);
    public int searchEndPage(String category);
    List<ProductListDto>productDiscountList(ProductListDto productListDto);
    public List<ProductListDto> productAmountList(ProductListDto productListDto);

    public List<ProductBestDto> productBestList(ProductBestDto productBestDto);
    public int searchBestEndPage();
    public List<ProductBestDto>productBestAmountList(ProductBestDto productBestDto);
    public List<ProductBestDto>productBestHighList(ProductBestDto productBestDto);
    public List<ProductBestDto>productBestLowList(ProductBestDto productBestDto);
    public List<ProductBestDto>productBestDiscountList(ProductBestDto productBestDto);
}
