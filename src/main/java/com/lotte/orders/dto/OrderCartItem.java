package com.lotte.orders.dto;

public class OrderCartItem {

    private String productNo;
    private String productName;
    private String productImgNewName;
    private Integer cartItemTotalPrice;
    private String cartItemDiscountPrice;
    private Integer cartItemCount;

    public String getProductNo() {
        return productNo;
    }

    public String getProductName() {
        return productName;
    }

    public String getProductImgNewName() {
        return productImgNewName;
    }

    public Integer getCartItemTotalPrice() {
        return cartItemTotalPrice;
    }

    public String getCartItemDiscountPrice() {
        return cartItemDiscountPrice;
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

    public void setProductImgNewName(String productImgNewName) {
        this.productImgNewName = productImgNewName;
    }

    public void setCartItemTotalPrice(Integer cartItemTotalPrice) {
        this.cartItemTotalPrice = cartItemTotalPrice;
    }

    public void setCartItemCount(Integer cartItemCount) {
        this.cartItemCount = cartItemCount;
    }

    public void setCartItemDiscountPrice(String cartItemDiscountPrice) {
        this.cartItemDiscountPrice = cartItemDiscountPrice;
    }
}
