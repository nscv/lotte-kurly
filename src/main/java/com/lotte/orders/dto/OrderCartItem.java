package com.lotte.orders.dto;

public class OrderCartItem {

    private String productName;
    private Integer cartItemTotalPrice;
    private Integer cartItemCount;

    public String getProductName() {
        return productName;
    }

    public Integer getCartItemTotalPrice() {
        return cartItemTotalPrice;
    }

    public Integer getCartItemCount() {
        return cartItemCount;
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
