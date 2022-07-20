package com.lotte.categories.dto;

public class CategoryDto {
    int categoryNo;
    String categoryName;


    public CategoryDto(String categoryName,int categoryNo) {
        this.categoryNo=categoryNo;
        this.categoryName = categoryName;
    }
    public CategoryDto(int categoryNo){
        this.categoryNo=categoryNo;
    }
    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public int getCategoryNo() {
        return categoryNo;
    }

    public void setCategoryNo(int categoryNo) {
        this.categoryNo = categoryNo;
    }
}
