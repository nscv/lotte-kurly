package com.lotte.products.controller;

import com.lotte.admin.service.StatisticService;
import com.lotte.categories.service.CategoryService;
import com.lotte.products.dto.*;
import com.lotte.products.service.ProductService;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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


    @GetMapping("/lowlist")
    public String ProductLowList(Model model,String category){
        List<ProductListDto>list=productService.productLowList(category);
        model.addAttribute("list",list);
        model.addAttribute("category",category);
        return"product/productlist";
    }

    @GetMapping("/highlist")
    public String ProductHighList(Model model,String category){
        List<ProductListDto>list=productService.productHighList(category);
        model.addAttribute("list",list);
        model.addAttribute("category",category);
        return"product/productlist";
    }

    @GetMapping("/productdetail")
    public String ProductDetail(Model model,String productNo){
        ProductImgCategoryDto dto = productService.productImgCategorylist(productNo);
        String detail = productService.getProductDetail(dto.getProductNo());
        model.addAttribute("dto",dto);
        model.addAttribute("detail",detail);
        return "product/productdetail";
    }
}
