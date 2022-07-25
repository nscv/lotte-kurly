package com.lotte.carts.vo;

public class CartItemVO {

    int cartItemNo; //  장바구니 아이템 번호 (seq)

    int cartNo; // 장바구니 번호

    int orderNo; // 주문 번호

    int productNo; // 상품 번호

    int cartItemCount; // 장바구니 아이템 개수

    int cartItemStatus; // 장바구니 아이템 상태


    public int getCartItemNo() {
        return cartItemNo;
    }

    public int getCartNo() {
        return cartNo;
    }

    public int getOrderNo() {
        return orderNo;
    }

    public int getProductNo() {
        return productNo;
    }

    public int getCartItemCount() {
        return cartItemCount;
    }

    public int getCartItemStatus() {
        return cartItemStatus;
    }
}
