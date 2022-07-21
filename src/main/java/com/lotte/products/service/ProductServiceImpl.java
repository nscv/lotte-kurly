package com.lotte.products.service;

import com.lotte.products.dao.ProductDao;
import com.lotte.products.dto.ProductDto;
import com.lotte.products.dto.ProductImgCategoryDto;
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
    public List<ProductListDto> productList(String category) {
        return productDao.productList(category);
    }
    public List<ProductListDto>productLowList(String category){
        return productDao.productLowList(category);
    }

    @Override
    public ProductImgCategoryDto productImgCategorylist(String productNo) { return productDao.productImgCategorylist(productNo);}

    public List<ProductListDto>productHighList(String category){
        return productDao.productHighList(category);
    }
}
