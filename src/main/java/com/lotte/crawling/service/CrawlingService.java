package com.lotte.crawling.service;

import com.lotte.crawling.dto.CrawlingCategoryDto;
import com.lotte.crawling.dto.CrawlingDetailDto;
import com.lotte.crawling.dto.CrawlingDto;
import com.lotte.products.dto.ProductDto;

import java.io.IOException;
import java.util.List;

public interface CrawlingService {
    void insertProducts(List<CrawlingDto> list);
    void insertCategory(List<CrawlingCategoryDto> list);

    List<Integer> selectProductIds();

    int updateContent(CrawlingDetailDto detail);

    void crawlingDetail() throws IOException;

    String getDetail(int productNo) throws IOException;
}
