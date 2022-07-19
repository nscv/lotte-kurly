package com.lotte.crawling.service;

import com.lotte.crawling.dto.CrawlingCategoryDto;
import com.lotte.crawling.dto.CrawlingDto;
import com.lotte.products.dto.ProductDto;

import java.util.List;

public interface CrawlingService {
    void insertProducts(List<CrawlingDto> list);
    void insertCategory(List<CrawlingCategoryDto> list);
}
