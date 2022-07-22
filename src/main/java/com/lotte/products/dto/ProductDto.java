package com.lotte.products.dto;

public class ProductDto {
    int productNo;
    int categoryNo;
    String productName;
    String productContent;
    String productSimpleContent;
    String productDeadline;
    int productPrice;
    int productAmount;
    int productStock;
    String productCategory;

    public ProductDto(int productNo, int categoryNo, String productName, String productContent, String productSimpleContent, String productDeadline, int productPrice, int productAmount, int productStock) {
        this.productNo = productNo;
        this.categoryNo = categoryNo;
        this.productName = productName;
        this.productContent = productContent;
        this.productSimpleContent = productSimpleContent;
        this.productDeadline = productDeadline;
        this.productPrice = productPrice;
        this.productAmount = productAmount;
        this.productStock = productStock;
    }

    public int getProductNo() {
        return productNo;
    }

    public void setProductNo(int productNo) {
        this.productNo = productNo;
    }

    public int getCategoryNo() {
        return categoryNo;
    }

    public void setCategoryNo(int categoryNo) {
        this.categoryNo = categoryNo;
    }

    public String getProductDeadline() {
        return productDeadline;
    }

    public void setProductDeadline(String productDeadline) {
        this.productDeadline = productDeadline;
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

    @Override
    public String toString() {
        return "ProductDto{" +
                "productNo=" + productNo +
                ", categoryNo=" + categoryNo +
                ", productName='" + productName + '\'' +
                ", productContent='" + productContent + '\'' +
                ", productSimpleContent='" + productSimpleContent + '\'' +
                ", productDeadline='" + productDeadline + '\'' +
                ", productPrice=" + productPrice +
                ", productAmount=" + productAmount +
                ", productStock=" + productStock +
                ", productCategory='" + productCategory + '\'' +
                '}';
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

    public ProductDto(int productNo, String productName, String productContent, String productSimpleContent, String productDeadline, int productPrice, int productAmount, int productStock, String productCategory) {
        this.productNo = productNo;
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