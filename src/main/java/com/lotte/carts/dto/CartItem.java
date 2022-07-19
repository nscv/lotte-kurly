package com.lotte.carts.dto;

/* 장바구니 목록에 표시할 데이터 (장바구니 아이템 리스트) */
public class CartItem {
    private Integer cartItemNo; // 장바구니 아이템 번호

    private Integer productNo; // 상품 번호

    private String productName; // 상품 이름

    private String productSimpleContent; // 상품 간단 설명

    private String productImgNewName; // 상품 이미지

    private String cartItemCount; // 장바구니 아이템 개수

    private String cartItemTotalPrice; // 장바구니 아이템 총 가격

    public void setCartItemNo(Integer cartItemNo) {
        this.cartItemNo = cartItemNo;
    }

    public void setProductNo(Integer productNo) {
        this.productNo = productNo;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public void setProductSimpleContent(String productSimpleContent) {
        this.productSimpleContent = productSimpleContent;
    }

    public void setProductImgNewName(String productImgNewName) {
        this.productImgNewName = productImgNewName;
    }

    public void setCartItemCount(String cartItemCount) {
        this.cartItemCount = cartItemCount;
    }

    public void setCartItemTotalPrice(String cartItemTotalPrice) {
        this.cartItemTotalPrice = cartItemTotalPrice;
    }

    public Integer getCartItemNo() {
        return cartItemNo;
    }

    public Integer getProductNo() {
        return productNo;
    }

    public String getProductName() {
        return productName;
    }

    public String getProductSimpleContent() {
        return productSimpleContent;
    }

    public String getProductImgNewName() {
        return productImgNewName;
    }

    public String getCartItemCount() {
        return cartItemCount;
    }

    public String getCartItemTotalPrice() {
        return cartItemTotalPrice;
    }
}
