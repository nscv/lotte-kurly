package com.lotte.orders.dto;

public class OrderProductsDto {
    private int orderNo;
    private int productNo;
    private int orderCount;

    public int getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(int orderNo) {
        this.orderNo = orderNo;
    }

    public int getProductNo() {
        return productNo;
    }

    public void setProductNo(int productNo) {
        this.productNo = productNo;
    }

    public int getOrderCount() {
        return orderCount;
    }

    public void setOrderCount(int orderCount) {
        this.orderCount = orderCount;
    }

    public OrderProductsDto(int orderNo, int productNo, int orderCount) {
        this.orderNo = orderNo;
        this.productNo = productNo;
        this.orderCount = orderCount;
    }

    @Override
    public String toString() {
        return "OrderProductsDto{" +
                "orderNo=" + orderNo +
                ", productNo=" + productNo +
                ", orderCount=" + orderCount +
                '}';
    }
}
