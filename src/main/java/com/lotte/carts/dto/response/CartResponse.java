package com.lotte.carts.dto.response;

import com.lotte.carts.dto.CartItemDto;
import java.util.List;

/* 장바구니 응답 */
public class CartResponse {

    /* 장바구니 아이템 목록 DTO */
    public static class CartItemsDto {

        private List<CartItemDto> cartItems; // 장바구니 목록 (장바구니 아이템 리스트)

        public CartItemsDto(List<CartItemDto> cartItems) {
            this.cartItems = cartItems;
        }

        public List<CartItemDto> getCartItems() {
            return cartItems;
        }
    }

}
