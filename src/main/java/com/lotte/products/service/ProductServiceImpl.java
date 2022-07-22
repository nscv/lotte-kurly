package com.lotte.products.service;

import com.lotte.products.dao.ProductDao;
import com.lotte.products.dto.*;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {

    private ProductDao productDao;

    public ProductServiceImpl(ProductDao productDao) {
        this.productDao = productDao;
    }

    @Override
    public void setProduct(ProductDto dto) {
        productDao.insertProducts(dto);
    }

    @Override
    public void updateProducts(ProductDto dto) {
        productDao.updateProducts(dto);
    }

    @Override
    public List<ProductListSortDto> productList(ProductCategoryDto productCategoryDto) {
        return productDao.productList(productCategoryDto);
    }
    public List<ProductListSortDto>productLowList(ProductCategoryDto productCategoryDto){
        return productDao.productLowList(productCategoryDto);
    }
    public List<ProductListSortDto>productHighList(ProductCategoryDto productCategoryDto){
        return productDao.productHighList(productCategoryDto);
    }

    @Override
    public ProductImgCategoryDto productImgCategorylist(String productNo) { return productDao.productImgCategorylist(productNo);}

    @Override
    public List<ProductListDto> getAllProductList() {
        return productDao.selectAllProductList();
    }

    public int searchEndPage(String category){
        return productDao.serarchEndPage(category);
    }



    public List<ProductListSortDto>productDiscountList(ProductCategoryDto productCategoryDto){
        return productDao.productDiscountList(productCategoryDto);
    }

    @Override
    public List<ProductListSortDto> productAmountList(ProductCategoryDto productCategoryDto) {
        return productDao.productAmountList(productCategoryDto);
    }

    public List<ProductBestDto>productBestList(ProductBestDto productBestDto){
        return productDao.productBestList(productBestDto);
    }
    public int searchBestEndPage(){
        return productDao.searchBestEndPage();
    }
    public List<ProductBestDto>productBestAmountList(ProductBestDto productBestDto){
        return productDao.productBestAmountList(productBestDto);
    }
    public List<ProductBestDto>productBestHighList(ProductBestDto productBestDto){
        return productDao.productBestHighList(productBestDto);
    }
    public List<ProductBestDto>productBestLowList(ProductBestDto productBestDto){
        return productDao.productBestLowList(productBestDto);
    }
    public List<ProductBestDto>productBestDiscountList(ProductBestDto productBestDto){
        return productDao.productBestDiscountList(productBestDto);
    }



    @Override
    public String getProductDetail(String productNo) {
        return productDao.selectProductDetail(productNo);
    }

    @Override
    public List<ProductListMainDiscountDto> productMainDiscountList() {
        return productDao.productMainDiscountList();
    }

    @Override
    public List<ProductListMainBestDto> productMainBestList() {
        return productDao.productMainBestList();
    }

    @Override
    public int getMaxProductNo() {
        return productDao.selectMaxProductNo();
    }

}
