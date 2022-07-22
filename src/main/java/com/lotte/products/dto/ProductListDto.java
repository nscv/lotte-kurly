package com.lotte.products.dto;

import java.io.Serializable;

public class ProductListDto {

    private int productNo;
    private String productName;
    private int productPrice;
    private int discountPrice;
    private String productDeadline;
    private int productAmount;
    private int productStock;

    private int pageNo;
    private int endPageNo;

    private String productImgNewName;
    private String productSimpleContent;
    private String category;
    public int getEndPageNo() {
        return endPageNo;
    }

    public void setEndPageNo(int endPageNo) {
        this.endPageNo = endPageNo;
    }


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

    public ProductListDto(int productNo, String productName, int productPrice,String ProductImgNewName,String productSimpleContent) {
        this.productNo = productNo;
        this.productName = productName;
        this.productPrice = productPrice;
        this.productImgNewName=ProductImgNewName;
        this.productSimpleContent=productSimpleContent;
        this.discountPrice=discountPrice;
    }
    public ProductListDto(String category,int pageNo){
        this.category=category;
        this.pageNo=pageNo*30;
        this.endPageNo=pageNo*30+30;
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
    public int getPageNo() {
        return pageNo;
    }

    public void setPageNo(int pageNo) {
        this.pageNo = pageNo;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
}
