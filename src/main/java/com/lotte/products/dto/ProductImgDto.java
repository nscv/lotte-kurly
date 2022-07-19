package com.lotte.products.dto;

public class ProductImgDto {
    private int productNo;
    private String productImgOriginName;
    private String productImgnewName;

    public ProductImgDto(){

    }

    public ProductImgDto(int productNo, String productImgOriginName, String productImgnewName) {
        this.productNo = productNo;
        this.productImgOriginName = productImgOriginName;
        this.productImgnewName = productImgnewName;
    }

    public int getProductNo() {
        return productNo;
    }

    public void setProductNo(int productNo) {
        this.productNo = productNo;
    }

    public String getProductImgOriginName() {
        return productImgOriginName;
    }

    public void setProductImgOriginName(String productImgOriginName) {
        this.productImgOriginName = productImgOriginName;
    }

    public String getProductImgnewName() {
        return productImgnewName;
    }

    public void setProductImgnewName(String productImgnewName) {
        this.productImgnewName = productImgnewName;
    }

    @Override
    public String toString() {
        return "ProductImgDto{" +
                "productNo=" + productNo +
                ", productImgOriginName='" + productImgOriginName + '\'' +
                ", productImgnewName='" + productImgnewName + '\'' +
                '}';
    }
}
