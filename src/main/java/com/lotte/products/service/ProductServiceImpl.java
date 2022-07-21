package com.lotte.products.service;

import com.lotte.products.dao.ProductDao;
import com.lotte.products.dto.ProductBestDto;
import com.lotte.products.dto.ProductDto;
import com.lotte.products.dto.ProductListDto;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {

    private ProductDao productDao;

    public ProductServiceImpl(ProductDao productDao) {
        this.productDao = productDao;
    }

    @Override
    public void insertProducts(ProductDto dto) {
        productDao.insertProducts(dto);
    }

    @Override
    public void updateProducts(ProductDto dto) {
        productDao.updateProducts(dto);
    }

    @Override
    public List<ProductListDto> productList(ProductListDto productListDto) {
        return productDao.productList(productListDto);
    }
    public List<ProductListDto>productLowList(ProductListDto productListDto){
        return productDao.productLowList(productListDto);
    }
    public List<ProductListDto>productHighList(ProductListDto productListDto){
        return productDao.productHighList(productListDto);
    }
    public int searchEndPage(String category){
        return productDao.serarchEndPage(category);
    }
    public List<ProductListDto>productDiscountList(ProductListDto productListDto){
        return productDao.productDiscountList(productListDto);
    }

    @Override
    public List<ProductListDto> productAmountList(ProductListDto productListDto) {
        return productDao.productAmountList(productListDto);
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
}
