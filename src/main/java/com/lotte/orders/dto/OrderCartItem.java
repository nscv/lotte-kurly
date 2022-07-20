package com.lotte.orders.dto;

public class OrderCartItem {

    private String productNo;
    private String productName;
    private Integer cartItemTotalPrice;
    private Integer cartItemCount;

    public String getProductNo() {
        return productNo;
    }

    public String getProductName() {
        return productName;
    }

    public Integer getCartItemTotalPrice() {
        return cartItemTotalPrice;
    }

    public Integer getCartItemCount() {
        return cartItemCount;
    }

    public void setProductNo(String productNo) {
        this.productNo = productNo;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public void setCartItemTotalPrice(Integer cartItemTotalPrice) {
        this.cartItemTotalPrice = cartItemTotalPrice;
    }

    public void setCartItemCount(Integer cartItemCount) {
        this.cartItemCount = cartItemCount;
    }
}
