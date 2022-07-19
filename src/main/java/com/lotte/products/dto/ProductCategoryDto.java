package com.lotte.products.dto;

public class ProductCategoryDto {
    private String productCategory;
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
                "productCategory='" + productCategory + '\'' +
                ", cnt=" + cnt +
                ", total=" + total +
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
