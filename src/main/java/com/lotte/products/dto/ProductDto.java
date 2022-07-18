package com.lotte.products.dto;

public class ProductDto {
    int productNo;
    String productName;
    String productContent;
    String productSimpleContent;
    String productDeadline;

    public String getProductDeadline() {
        return productDeadline;
    }

    public void setProductDeadline(String productDeadline) {
        this.productDeadline = productDeadline;
    }

    int productPrice;
    int productAmount;
    int productStock;
    String productCategory;

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductContent() {
        return productContent;
    }

    public void setProductContent(String productContent) {
        this.productContent = productContent;
    }

    public String getProductSimpleContent() {
        return productSimpleContent;
    }

    public void setProductSimpleContent(String productSimpleContent) {
        this.productSimpleContent = productSimpleContent;
    }

    public int getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(int productPrice) {
        this.productPrice = productPrice;
    }

    public int getProductAmount() {
        return productAmount;
    }

    public void setProductAmount(int productAmount) {
        this.productAmount = productAmount;
    }

    public int getProductStock() {
        return productStock;
    }

    public void setProductStock(int productStock) {
        this.productStock = productStock;
    }

    public String getProductCategory() {
        return productCategory;
    }

    public void setProductCategory(String productCategory) {
        this.productCategory = productCategory;
    }

    public ProductDto(String productName, String productContent, String productSimpleContent, String productDeadline, int productPrice, int productAmount, int productStock, String productCategory) {
        this.productName = productName;
        this.productContent = productContent;
        this.productSimpleContent = productSimpleContent;
        this.productDeadline = productDeadline;
        this.productPrice = productPrice;
        this.productAmount = productAmount;
        this.productStock = productStock;
        this.productCategory = productCategory;
    }
}