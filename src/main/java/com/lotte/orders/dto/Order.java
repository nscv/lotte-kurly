package com.lotte.orders.dto;

public class Order {

    private String cartItemName;
    private String cartItemProductImgNewName;
    private Integer orderNo;
    private Integer orderTotalPrice;
    private Integer orderState;
    private String orderCreatedAt;

    public void setCartItemNameAndProductImgNewName(OrderCartItemNameAndImg orderCartItemNameAndImg) {
        this.cartItemName = orderCartItemNameAndImg.getProductName();
        this.cartItemProductImgNewName = orderCartItemNameAndImg.getProductImgNewName();
    }

    public String getCartItemName() {
        return cartItemName;
    }

    public void setCartItemName(String cartItemName) {
        this.cartItemName = cartItemName;
    }

    public String getCartItemProductImgNewName() {
        return cartItemProductImgNewName;
    }

    public void setCartItemProductImgNewName(String cartItemProductImgNewName) {
        this.cartItemProductImgNewName = cartItemProductImgNewName;
    }

    public Integer getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(Integer orderNo) {
        this.orderNo = orderNo;
    }

    public Integer getOrderTotalPrice() {
        return orderTotalPrice;
    }

    public void setOrderTotalPrice(Integer orderTotalPrice) {
        this.orderTotalPrice = orderTotalPrice;
    }

    public Integer getOrderState() {
        return orderState;
    }

    public void setOrderState(Integer orderState) {
        this.orderState = orderState;
    }

    public String getOrderCreatedAt() {
        return orderCreatedAt;
    }

    public void setOrderCreatedAt(String orderCreatedAt) {
        this.orderCreatedAt = orderCreatedAt;
    }

}
