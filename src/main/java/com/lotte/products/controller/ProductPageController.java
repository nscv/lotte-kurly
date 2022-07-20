package com.lotte.products.controller;

import com.lotte.products.dto.ProductCategoryDto;
import com.lotte.products.dto.ProductListDto;
import com.lotte.products.dto.UserAgeDto;
import com.lotte.products.dto.UserGenderDto;
import com.lotte.products.service.ProductService;
import com.lotte.products.service.StatisticService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductPageController {

    private static final Logger logger = LoggerFactory.getLogger(ProductPageController.class);

    private ProductService productService;
    private StatisticService statisticService;

    public ProductPageController(StatisticService statisticService, ProductService productService) {
        this.statisticService = statisticService;
        this.productService = productService;
    }

    @GetMapping("/list")
    public String ProductList(Model model, String category){
        List<ProductListDto> list= productService.productList(category);
        for(ProductListDto d:list){
            System.out.println(d.getProductNo()+" "+d.getProductName()+" "+d.getProductPrice());
        }
        model.addAttribute("list",list);
        return "product/productlist";
    }
    @GetMapping("/lowlist")
    public String ProductLowList(Model model,String category){
        List<ProductListDto>list=productService.productLowList();
        model.addAttribute("list",list);
        return"product/productlist";
    }
    @GetMapping("/highlist")
    public String ProductHighList(Model model,String category){
        List<ProductListDto>list=productService.productHighList();
        model.addAttribute("list",list);
        return"product/productlist";
    }

    @GetMapping("/productdetail")
    public String ProductDetail(){
        return "product/productdetail";
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
