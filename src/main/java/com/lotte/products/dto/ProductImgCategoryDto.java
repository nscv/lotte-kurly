package com.lotte.products.dto;

public class ProductImgCategoryDto {
    private String ProductNo;
    private String product_name;
    private String product_content;
    private String product_price;
    private String category_name;
    private String product_deadline;
    private String product_stock;

    public ProductImgCategoryDto() {

    }

    public ProductImgCategoryDto(String productNo, String product_name, String product_content, String product_price, String category_name, String product_deadline, String product_stock) {
        ProductNo = productNo;
        this.product_name = product_name;
        this.product_content = product_content;
        this.product_price = product_price;
        this.category_name = category_name;
        this.product_deadline = product_deadline;
        this.product_stock = product_stock;
    }

    public String getProductNo() {
        return ProductNo;
    }

    public void setProductNo(String productNo) {
        ProductNo = productNo;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public String getProduct_content() {
        return product_content;
    }

    public void setProduct_content(String product_content) {
        this.product_content = product_content;
    }

    public String getProduct_price() {
        return product_price;
    }

    public void setProduct_price(String product_price) {
        this.product_price = product_price;
    }

    public String getCategory_name() {
        return category_name;
    }

    public void setCategory_name(String category_name) {
        this.category_name = category_name;
    }

    public String getProduct_deadline() {
        return product_deadline;
    }

    public void setProduct_deadline(String product_deadline) {
        this.product_deadline = product_deadline;
    }

    public String getProduct_stock() {
        return product_stock;
    }

    public void setProduct_stock(String product_stock) {
        this.product_stock = product_stock;
    }

    @Override
    public String toString() {
        return "ProductImgCategoryDto{" +
                "ProductNo='" + ProductNo + '\'' +
                ", product_name='" + product_name + '\'' +
                ", product_content='" + product_content + '\'' +
                ", product_price='" + product_price + '\'' +
                ", category_name='" + category_name + '\'' +
                ", product_deadline='" + product_deadline + '\'' +
                ", product_stock='" + product_stock + '\'' +
                '}';
    }
}
