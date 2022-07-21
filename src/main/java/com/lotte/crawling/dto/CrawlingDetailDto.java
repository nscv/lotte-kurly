package com.lotte.crawling.dto;

public class CrawlingDetailDto {

    private int productNo;

    private String productContent;

    @Override
    public String toString() {
        return "CrawlingDetailDto{" +
                "productNo=" + productNo +
                ", productContent='" + productContent + '\'' +
                '}';
    }

    public int getProductNo() {
        return productNo;
    }

    public void setProductNo(int productNo) {
        this.productNo = productNo;
    }

    public String getProductContent() {
        return productContent;
    }

    public void setProductContent(String productContent) {
        this.productContent = productContent;
    }

    public CrawlingDetailDto(int productNo, String productContent) {
        this.productNo = productNo;
        this.productContent = productContent;
    }
}
