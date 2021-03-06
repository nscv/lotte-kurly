package com.lotte.orders.dto;

public class Order {

    private String cartItemProductName;
    private String cartItemProductImgNewName;
    private Integer cartItemsCount;
    private Integer orderNo;
    private Integer orderTotalPrice;
    private Integer orderState;
    private String orderCreatedAt;

    public void setCartItemNameAndProductImgNewName(OrderCartItemNameAndImg orderCartItemNameAndImg) {
        this.cartItemProductName = orderCartItemNameAndImg.getProductName();
        this.cartItemProductImgNewName = orderCartItemNameAndImg.getProductImgNewName();
    }

    public Integer getCartItemsCount() {
        return cartItemsCount;
    }

    public void setCartItemsCount(Integer cartItemsCount) {
        this.cartItemsCount = cartItemsCount;
    }

    public String getCartItemProductName() {
        return cartItemProductName;
    }

    public void setCartItemProductName(String cartItemProductName) {
        this.cartItemProductName = cartItemProductName;
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
