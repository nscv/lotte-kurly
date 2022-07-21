package com.lotte.products.controller;

import com.lotte.categories.service.CategoryService;
import com.lotte.products.dto.*;
import com.lotte.products.service.ProductService;
import com.lotte.products.service.StatisticService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductPageController {

    private static final Logger logger = LoggerFactory.getLogger(ProductPageController.class);

    private ProductService productService;
    private StatisticService statisticService;
    private CategoryService categoryService;

    public ProductPageController(StatisticService statisticService, ProductService productService,CategoryService categoryService) {
        this.statisticService = statisticService;
        this.productService = productService;
        this.categoryService=categoryService;
    }


    @GetMapping("/list")
    public String ProductList(Model model,@RequestParam(value="amount",defaultValue ="1")String amount,
                              String category,@RequestParam(value="low",defaultValue ="1") String low,
                              @RequestParam(value="high",defaultValue ="1")String high, int pageNo,@RequestParam(value="discount",defaultValue ="1")String discount){
        ProductListDto dto=new ProductListDto(category,pageNo);
        List<ProductListDto> list= productService.productList(dto);
        int total=productService.searchEndPage(category);

        int endPage=(total%30==0) ? total/30 : total/30+1;
        if(discount.equals("true")){
            list=productService.productDiscountList(dto);
        }
        else if(amount.equals("true")){
            list=productService.productAmountList(dto);
        }
        else if(low.equals("true")){
            list=productService.productLowList(dto);
        }
        else if(high.equals("true")){
            list=productService.productHighList(dto);
        }
        String categoryName=categoryService.searchCategory(Integer.parseInt(category));
        model.addAttribute("category",category);
        model.addAttribute("categoryName",categoryName);
        model.addAttribute("list",list);
        model.addAttribute("low",low);
        model.addAttribute("high",high);
        model.addAttribute("startPage",0);
        model.addAttribute("endPage",endPage-1);
        model.addAttribute("total",total);
        return "product/productlist";
    }
    @GetMapping("/bestproduct")
    public String BestProductlist(Model model,@RequestParam(value="amount",defaultValue ="1")String amount
                                ,@RequestParam(value="low",defaultValue ="1") String low,
                                  @RequestParam(value="high",defaultValue ="1")String high,@RequestParam(value="pageNo",defaultValue = "0") int pageNo
                                    ,@RequestParam(value="discount",defaultValue ="1")String discount){
        ProductBestDto dto=new ProductBestDto(pageNo);
        List<ProductBestDto>list=productService.productBestList(dto);
        int total=productService.searchBestEndPage();
        int endPage=(total%30==0) ? total/30 : total/30+1;
        if(discount.equals("true")){
            list=productService.productBestDiscountList(dto);
        }
        else if(amount.equals("true")){
            list=productService.productBestAmountList(dto);
        }
        else if(low.equals("true")){
            list=productService.productBestLowList(dto);
        }
        else if(high.equals("true")){
            list=productService.productBestHighList(dto);
        }

        model.addAttribute("list",list);
        model.addAttribute("startPage",0);
        model.addAttribute("endPage",endPage-1);
        model.addAttribute("low",low);
        model.addAttribute("high",high);
        model.addAttribute("total",total);
        return"product/bestproductlist";
    }

    @GetMapping("/productdetail")
    public String ProductDetail(Model model,String productNo){
        return "productdetail";
    }
    // TODO: 지금은 테스트용으로 페이지랑 같이 보내지만 List 정보만 보내기
    @GetMapping("/axis")
    public String date(Model model) {
        // TODO: 날짜별 매출 현황 가져오기
        return "admin/axis";
    }
    // TODO: category가 없어졌으므로 PRODUCTS.category_no과 CATEGORIES.category_name을 사용하여 카테고리별로 가져오기
    @GetMapping("/donut")
    public String category(Model model) {
        List<ProductCategoryDto> categoryList = statisticService.getProductCountByCategory();
        model.addAttribute("category", categoryList);
        return "admin/donut";
    }
    @GetMapping("/age")
    public String age(Model model) {
        List<UserAgeDto> ageList = statisticService.getPriceByAge();
        List<UserGenderDto> genderList = statisticService.getPricesByGender();
        model.addAttribute("gender", genderList);
        model.addAttribute("age", ageList);
        return "admin/age-graph";
    }

    @GetMapping("/gender")
    public String gender(Model model) {
        List<UserGenderDto> genderList = statisticService.getPricesByGender();
        model.addAttribute("gender", genderList);
        return "admin/gender-graph";
    }

    // TODO: 데이터만 보낼 때 활성화하여 처리할 것
//    @GetMapping("/gender")
//    public String gender(Model model) {
//        List<UserGenderDto> genderList = statisticService.getPricesByGender();
//        genderList.forEach(System.out::println);
//        model.addAttribute("gender", genderList);
//        return "admin/after-render";
//    }
}
