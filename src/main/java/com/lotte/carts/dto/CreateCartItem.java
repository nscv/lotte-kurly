package com.lotte.carts.dto;

import com.lotte.carts.dto.request.CartRequest;

/* 장바구니 아이템 생성 (Service -> Dao) DTO */
public class CreateCartItem {
    private Integer cartItemNo;
    private Integer productNo;
    private Integer cartNo;
    private Integer cartItemCount;

    public CreateCartItem(CartRequest.CreateCartItemDto reqDto) {
        this.productNo = reqDto.getProductNo();
        this.cartNo = reqDto.getCartNo();
        this.cartItemCount = reqDto.getCartItemCount();
    }

    public Integer getCartItemNo() {
        return cartItemNo;
    }

    public void setCartItemNo(Integer cartItemNo) {
        this.cartItemNo = cartItemNo;
    }
}
