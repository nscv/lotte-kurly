package com.lotte.orders.dto;

public class OrderDetail {

    private Integer orderNo;
    private Integer orderTotalPrice;
    private Integer orderState;
    private String orderCreatedAt;
    private String orderAddress;

    public Integer getOrderNo() {
        return orderNo;
    }

    public Integer getOrderTotalPrice() {
        return orderTotalPrice;
    }

    public Integer getOrderState() {
        return orderState;
    }

    public String getOrderCreatedAt() {
        return orderCreatedAt;
    }

    public String getOrderAddress() {
        return orderAddress;
    }

    public void setOrderNo(Integer orderNo) {
        this.orderNo = orderNo;
    }

    public void setOrderTotalPrice(Integer orderTotalPrice) {
        this.orderTotalPrice = orderTotalPrice;
    }

    public void setOrderState(Integer orderState) {
        this.orderState = orderState;
    }

    public void setOrderCreatedAt(String orderCreatedAt) {
        this.orderCreatedAt = orderCreatedAt;
    }

    public void setOrderAddress(String orderAddress) {
        this.orderAddress = orderAddress;
    }
}
