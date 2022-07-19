package com.lotte.products.dto;

import java.io.Serializable;

public class ProductListDto implements Serializable {

    private int productNo;
    private String productName;
    private int productPrice;
    private String productDeadline;
    private int productAmount;
    private int productStock;

    @Override
    public String toString() {
        return "ProductListDto{" +
                "productNo=" + productNo +
                ", productName='" + productName + '\'' +
                ", productPrice=" + productPrice +
                ", productDeadline='" + productDeadline + '\'' +
                ", productAmount=" + productAmount +
                ", productStock=" + productStock +
                '}';
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

    public String getProductDeadline() {
        return productDeadline;
    }

    public void setProductDeadline(String productDeadline) {
        this.productDeadline = productDeadline;
    }

    public ProductListDto(int productNo, String productName, int productPrice, String productDeadline, int productAmount, int productStock) {
        this.productNo = productNo;
        this.productName = productName;
        this.productPrice = productPrice;
        this.productDeadline = productDeadline;
        this.productAmount = productAmount;
        this.productStock = productStock;
    }

//    String productImgNewName;

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
