package com.lotte.orders.dto;

import com.lotte.orders.dto.request.OrderRequest;

public class CreateOrder {

    private Integer orderNo;
    private Integer userNo;
    private String orderAddress;
    private String orderTotalPrice;

    public CreateOrder(OrderRequest.CreateOrderDto requestDto) {
        userNo = requestDto.getUserNo();
        orderAddress = requestDto.getOrderAddress();
        orderTotalPrice = requestDto.getOrderTotalPrice();
    }

    public Integer getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(Integer orderNo) {
        this.orderNo = orderNo;
    }

    public Integer getUserNo() {
        return userNo;
    }

    public void setUserNo(Integer userNo) {
        this.userNo = userNo;
    }

    public String getOrderAddress() {
        return orderAddress;
    }

    public void setOrderAddress(String orderAddress) {
        this.orderAddress = orderAddress;
    }

    public String getOrderTotalPrice() {
        return orderTotalPrice;
    }

    public void setOrderTotalPrice(String orderTotalPrice) {
        this.orderTotalPrice = orderTotalPrice;
    }
}
