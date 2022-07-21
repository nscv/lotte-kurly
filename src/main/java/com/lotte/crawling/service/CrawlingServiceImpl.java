package com.lotte.crawling.service;

import com.lotte.crawling.dao.CrawlingDao;
import com.lotte.crawling.dto.CrawlingCategoryDto;
import com.lotte.crawling.dto.CrawlingDetailDto;
import com.lotte.crawling.dto.CrawlingDto;
import com.lotte.products.dao.ProductDao;
import com.lotte.products.dto.ProductDto;
import com.lotte.products.dto.ProductImgDto;
import com.lotte.products.dto.categoriesDto;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Service
public class CrawlingServiceImpl implements CrawlingService{

    private CrawlingDao crawlingDao;

    public CrawlingServiceImpl(CrawlingDao crawlingDao) {
        this.crawlingDao = crawlingDao;
    }


    @Override
    public void insertCategory(List<CrawlingCategoryDto> list) {
        for(int i=0; i<list.size(); i++){
            int categoryNo = Integer.parseInt(list.get(i).getNo());
            String categoryName = list.get(i).getName();
            String categoryImg = list.get(i).getPc_icon_url();

            categoriesDto dto = new categoriesDto(categoryNo,categoryName,categoryImg);
            crawlingDao.insertCategory(dto);
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
            crawlingDao.insertCrawProducts(prdto);
            
            // ProductImgDto 넣어야하는 값 셋팅
            String productImgOriginName = "";
            String productImgnewName = list.get(i).getList_image_url();

            // ProductImgDto 생성되면 dao에 데이터 전달해서 insert 진행
            ProductImgDto pidto = new ProductImgDto(productNo, productImgOriginName, productImgnewName);
            crawlingDao.insertProductImg(pidto);
        }
    }

    @Override
    public List<Integer> selectProductIds() {
        List<Integer> list = crawlingDao.selectProductIds();
        return list;
    }

    @Override
    public int updateContent(CrawlingDetailDto detail) {
        int check = crawlingDao.updateContent(detail);
//        System.out.println(detail);
        return check;
    }

    @Override
    public void crawlingDetail() throws IOException {
        List<Integer> list = selectProductIds();
//        System.out.print(list);

        for (int i = 0; i < list.size(); i ++){
//            System.out.println(list.get(i));
            String detail = getDetail(list.get(i));
            CrawlingDetailDto dto = new CrawlingDetailDto(list.get(i), detail);
            System.out.println(list.get(i) + "번호" + updateContent(dto));
        }
    }

    @Override
    public String getDetail(int productNo) throws IOException {
        Document doc = Jsoup.connect("https://www.kurly.com/shop/goods/goods_view.php?&goodsno="+ Integer.toString(productNo)).maxBodySize(0).get();
//        System.out.println(doc);
        Elements detail = doc.select("div.goods_wrap");
//        System.out.println(detail.html());

        return detail.html();
    }
}
