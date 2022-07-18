package com.lotte.products.dto;

import java.io.Serializable;

public class ProductListDto implements Serializable {

    int productNo;
    String productName;
    int productPrice;
//    String productImgNewName;

    @Override
    public String toString() {
        return "ProductListDto{" +
                "productNo=" + productNo +
                ", productName='" + productName + '\'' +
                ", productPrice=" + productPrice +
//                ", productImgNewName='" + productImgNewName + '\'' +
                '}';
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

    public ProductListDto(int productNo, String productName, int productPrice) {
        this.productNo = productNo;
        this.productName = productName;
        this.productPrice = productPrice;
    }
//    public String getProductImgNewName() {
//        return productImgNewName;
//    }
//
//    public void setProductImgNewName(String productImgNewName) {
//        this.productImgNewName = productImgNewName;
//    }
//
//    public ProductListDto(int productNo, String productName, int productPrice, String productImgNewName) {
//        this.productNo = productNo;
//        this.productName = productName;
//        this.productPrice = productPrice;
//        this.productImgNewName = productImgNewName;
//    }
}
