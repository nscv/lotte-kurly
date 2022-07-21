package com.lotte.products.dto;

public class ProductBestDto {
    private int productNo;
    private String productName;
    private int productPrice;
    private int discountPrice;
    private String productDeadline;
    private int productAmount;
    private String productImgNewName;
    private String productSimpleContent;

    private int pageNo;
    private int endPageNo;

    private String RN;
    public ProductBestDto(int pageNo){
        this.pageNo=pageNo*30;
        this.endPageNo=pageNo*30+30;
    }
    public ProductBestDto(int productNo, String productName, int productPrice, String productImgNewName, String productSimpleContent, int discountPrice, String RN) {
        this.productNo = productNo;
        this.productName = productName;
        this.productPrice = productPrice;
        this.discountPrice = discountPrice;
        this.productImgNewName = productImgNewName;
        this.productSimpleContent = productSimpleContent;
        this.RN = RN;
    }

    public int getPageNo() {
        return pageNo;
    }

    public void setPageNo(int pageNo) {
        this.pageNo = pageNo;
    }

    public int getEndPageNo() {
        return endPageNo;
    }

    public void setEndPageNo(int endPageNo) {
        this.endPageNo = endPageNo;
    }

    public String getRN() {
        return RN;
    }

    public void setRN(String RN) {
        this.RN = RN;
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

    public String getProductDeadline() {
        return productDeadline;
    }

    public void setProductDeadline(String productDeadline) {
        this.productDeadline = productDeadline;
    }

    public int getProductAmount() {
        return productAmount;
    }

    public void setProductAmount(int productAmount) {
        this.productAmount = productAmount;
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
