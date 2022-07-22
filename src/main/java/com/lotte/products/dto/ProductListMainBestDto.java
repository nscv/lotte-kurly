package com.lotte.products.dto;

public class ProductListMainBestDto {
    private int productNo;
    private String productName;
    private int productPrice;
    private int discountPrice;


    private String productImgNewName;
    private String productSimpleContent;

    public ProductListMainBestDto(int productNo, String productName, int productPrice, String ProductImgNewName, String productSimpleContent, int discountPrice) {
        this.productNo = productNo;
        this.productName = productName;
        this.productPrice = productPrice;
        this.productImgNewName=ProductImgNewName;
        this.productSimpleContent=productSimpleContent;
        this.discountPrice=discountPrice;
    }

    public int getProductNo() {
        return productNo;
    }

    public void setProductNo(int productNo) {
        this.productNo = productNo;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(int productPrice) {
        this.productPrice = productPrice;
    }

    public int getDiscountPrice() {
        return discountPrice;
    }

    public void setDiscountPrice(int discountPrice) {
        this.discountPrice = discountPrice;
    }

    public String getProductImgNewName() {
        return productImgNewName;
    }

    public void setProductImgNewName(String productImgNewName) {
        this.productImgNewName = productImgNewName;
    }

    public String getProductSimpleContent() {
        return productSimpleContent;
    }

    public void setProductSimpleContent(String productSimpleContent) {
        this.productSimpleContent = productSimpleContent;
    }
}
