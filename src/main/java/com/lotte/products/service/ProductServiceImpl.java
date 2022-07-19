package com.lotte.products.service;

import com.lotte.products.dao.ProductDao;
import com.lotte.products.dto.ProductDto;
import com.lotte.products.dto.ProductListDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductDao dao;

    @Override
    public void insertProducts(ProductDto dto) {
        dao.insertProducts(dto);
    }

    @Override
    public void updateProducts(ProductDto dto) {
        dao.updateProducts(dto);
    }

    @Override
    public List<ProductListDto> productList() {
        return dao.productList();
    }
}
