package com.lotte.products.dto;

public class ProductCategoryDto {
    String category;
    int pageNo;
    int endPageNo;

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public int getPageNo() {
        return pageNo;
    }

    public void setPageNo(int pageNo) {
        this.pageNo = pageNo;
    }

    public int getEndPageNo() {
        return endPageNo;
    }

    public void setEndPageNo(int endPageNo) {
        this.endPageNo = endPageNo;
    }

    public ProductCategoryDto(String category, int pageNo){
        this.category=category;
        this.pageNo=pageNo*30;
        this.endPageNo=pageNo*30+30;
    }
}
