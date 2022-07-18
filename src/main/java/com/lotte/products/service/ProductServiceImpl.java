package com.lotte.products.service;

import com.lotte.products.dao.ProductDao;
import com.lotte.products.dto.ProductDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
