package com.lotte.products.dto;

public class categoriesDto {
    int categoryNo;
    String categoryName;
    String categoryImg;

    public categoriesDto() {

    }

    public categoriesDto(int categoryNo, String categoryName, String categoryImg) {
        this.categoryNo = categoryNo;
        this.categoryName = categoryName;
        this.categoryImg = categoryImg;
    }

    public int getCategoryNo() {
        return categoryNo;
    }

    public void setCategoryNo(int categoryNo) {
        this.categoryNo = categoryNo;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getCategoryImg() {
        return categoryImg;
    }

    public void setCategoryImg(String categoryImg) {
        this.categoryImg = categoryImg;
    }

    @Override
    public String toString() {
        return "categoriesDto{" +
                "categoryNo=" + categoryNo +
                ", categoryName='" + categoryName + '\'' +
                ", categoryImg='" + categoryImg + '\'' +
                '}';
    }
}
