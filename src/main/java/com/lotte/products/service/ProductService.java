package com.lotte.products.service;

import com.lotte.products.dao.ProductDao;
import com.lotte.products.dto.ProductListDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {
    @Autowired
    private ProductDao dao;
    public List<ProductListDto> productList(){
        List<ProductListDto> list = dao.productList();
        return dao.productList();
    }
}
