package com.lotte.products.dto;

public class ProductCategoryDto {
    private String categoryName;
    private int cnt;
    private int total;

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    @Override
    public String toString() {
        return "ProductCategoryDto{" +
                "categoryName='" + categoryName + '\'' +
                ", cnt=" + cnt +
                ", total=" + total +
                '}';
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public int getCnt() {
        return cnt;
    }

    public void setCnt(int cnt) {
        this.cnt = cnt;
    }

    public ProductCategoryDto(String categoryName, int cnt) {
        this.categoryName = categoryName;
        this.cnt = cnt;
    }
}
