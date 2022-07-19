package com.lotte.crawling.dao;

import com.lotte.products.dto.ProductDto;
import com.lotte.products.dto.ProductImgDto;
import com.lotte.products.dto.categoriesDto;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CrawlingDao {
    void insertCrawProducts(ProductDto product);
    void insertProductImg(ProductImgDto productImgDto);
    void insertCategory(categoriesDto categoriesDto);
}
