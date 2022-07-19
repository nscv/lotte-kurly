package com.lotte.crawling.service;

import com.lotte.crawling.dao.CrawlingDao;
import com.lotte.crawling.dto.CrawlingCategoryDto;
import com.lotte.crawling.dto.CrawlingDto;
import com.lotte.products.dao.ProductDao;
import com.lotte.products.dto.ProductDto;
import com.lotte.products.dto.ProductImgDto;
import com.lotte.products.dto.categoriesDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Service
public class CrawlingServiceImpl implements CrawlingService{

    @Autowired
    private CrawlingDao dao;


    @Override
    public void insertCategory(List<CrawlingCategoryDto> list) {
        for(int i=0; i<list.size(); i++){
            int categoryNo = Integer.parseInt(list.get(i).getNo());
            String categoryName = list.get(i).getName();
            String categoryImg = list.get(i).getName();

            categoriesDto dto = new categoriesDto(categoryNo,categoryName,categoryImg);
            dao.insertCategory(dto);
        }
    }

    // Products 테이블 및 Product_mgs 테이블 데이터 삽입
    @Override
    public void insertProducts(List<CrawlingDto> list) {
        List<ProductDto> listProdutct = new ArrayList<>();
        List<ProductImgDto> listProdutctImg = new ArrayList<>();

        for(int i=0; i<list.size(); i++){
            // 유통기한 오늘 날짜부터 10일 이상으로 셋팅
            Calendar cal = Calendar.getInstance();
            cal.setTime(new Date());
            cal.add(Calendar.DATE, (int)(Math.random()*100) + 10);
            DateFormat df = new SimpleDateFormat("yyyyMMdd");

            // 랜덤값으로 넣어야 하는 유통기한, 판매량, 재고 셋팅
            int productNo = Integer.parseInt(list.get(i).getNo());
            int categoryNo = Integer.parseInt(list.get(i).getCategory_no().replace("\"",""));
            String productName = list.get(i).getName();
            String productContent = list.get(i).getShortdesc();
            String productSimpleContent = list.get(i).getShort_description();
            String productDeadline = df.format(cal.getTime());
            int productPrice = Integer.parseInt(list.get(i).getPrice());
            int productAmount = (int)(Math.random()*100) + 50;
            int productStock = (int)(Math.random()*100);

            // productDto 생성되면 dao에 데이터 전달해서 insert 진행
            ProductDto prdto = new ProductDto(productNo,categoryNo,productName,productContent,productSimpleContent,
                    productDeadline,productPrice,productAmount,productStock);
            dao.insertCrawProducts(prdto);
            
            // ProductImgDto 넣어야하는 값 셋팅
            String productImgOriginName = "";
            String productImgnewName = list.get(i).getList_image_url();

            // ProductImgDto 생성되면 dao에 데이터 전달해서 insert 진행
            ProductImgDto pidto = new ProductImgDto(productNo, productImgOriginName, productImgnewName);
            dao.insertProductImg(pidto);
        }
    }
}
