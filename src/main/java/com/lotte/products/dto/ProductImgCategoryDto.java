package com.lotte.products.dto;

public class ProductImgCategoryDto {
    private String productNo;
    private String productName;
    private String productContent;
    private String productSimpleContent;
    private String productPrice;
    private String categoryName;
    private String productDeadline;
    private String productStock;
    private String productImgNewName;

    public ProductImgCategoryDto() {
    }

    public ProductImgCategoryDto(String productNo, String productName, String productContent, String productSimpleContent, String productPrice, String categoryName, String productDeadline, String productStock, String productImgNewName) {
        this.productNo = productNo;
        this.productName = productName;
        this.productContent = productContent;
        this.productSimpleContent = productSimpleContent;
        this.productPrice = productPrice;
        this.categoryName = categoryName;
        this.productDeadline = productDeadline;
        this.productStock = productStock;
        this.productImgNewName = productImgNewName;
    }

    public String getProductNo() {
        return productNo;
    }

    public void setProductNo(String productNo) {
        this.productNo = productNo;
    }

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

    public String getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(String productPrice) {
        this.productPrice = productPrice;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getProductDeadline() {
        return productDeadline;
    }

    public void setProductDeadline(String productDeadline) {
        this.productDeadline = productDeadline;
    }

    public String getProductStock() {
        return productStock;
    }

    public void setProductStock(String productStock) {
        this.productStock = productStock;
    }

    public String getProductImgNewName() {
        return productImgNewName;
    }

    public void setProductImgNewName(String productImgNewName) {
        this.productImgNewName = productImgNewName;
    }

    @Override
    public String toString() {
        return "ProductImgCategoryDto{" +
                "productNo='" + productNo + '\'' +
                ", productName='" + productName + '\'' +
                ", productContent='" + productContent + '\'' +
                ", productSimpleContent='" + productSimpleContent + '\'' +
                ", productPrice='" + productPrice + '\'' +
                ", categoryName='" + categoryName + '\'' +
                ", productDeadline='" + productDeadline + '\'' +
                ", productStock='" + productStock + '\'' +
                ", productImgNewName='" + productImgNewName + '\'' +
                '}';
    }
}