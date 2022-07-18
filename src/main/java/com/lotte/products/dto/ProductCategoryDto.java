package com.lotte.products.dto;

public class ProductCategoryDto {
    private String productCategory;
    private int cnt;

    @Override
    public String toString() {
        return "CategoryDto{" +
                "productCategory='" + productCategory + '\'' +
                ", cnt=" + cnt +
                '}';
    }

    public String getProductCategory() {
        return productCategory;
    }

    public void setProductCategory(String productCategory) {
        this.productCategory = productCategory;
    }

    public int getCnt() {
        return cnt;
    }

    public void setCnt(int cnt) {
        this.cnt = cnt;
    }

    public ProductCategoryDto(String productCategory, int cnt) {
        this.productCategory = productCategory;
        this.cnt = cnt;
    }
}
