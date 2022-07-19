package com.lotte.carts.dto.response;

import com.lotte.carts.dto.CartItem;
import com.lotte.carts.dto.UpdateCartItemCount;
import java.util.List;

/* 장바구니 응답 */
public class CartResponse {

    /* 장바구니 아이템 목록 DTO */
    public static class CartItemsDto {

        private List<CartItem> cartItems; // 장바구니 목록 (장바구니 아이템 리스트)

        public CartItemsDto(List<CartItem> cartItems) {
            this.cartItems = cartItems;
        }

        public List<CartItem> getCartItems() {
            return cartItems;
        }
    }

    /* 장바구니 아이템 추가 DTO */
    public static class CreateCartItemDto {

        private Integer cartItemNo; // 장바구니 아이템 생성 후 부여된 시퀀스 리턴

        public CreateCartItemDto(Integer cartItemNo) {
            this.cartItemNo = cartItemNo;
        }

        public Integer getCartItemNo() {
            return cartItemNo;
        }

        public void setCartItemNo(Integer cartItemNo) {
            this.cartItemNo = cartItemNo;
        }
    }

    public static class UpdateCartItemCountDto {

        private Integer cartItemNo;

        private Integer cartItemTotalPrice;

        public UpdateCartItemCountDto(UpdateCartItemCount uCartItemCount) {
            this.cartItemNo = uCartItemCount.getCartItemNo();
            this.cartItemTotalPrice = uCartItemCount.getCartItemTotalPrice();
        }

        public Integer getCartItemNo() {
            return cartItemNo;
        }

        public Integer getCartItemTotalPrice() {
            return cartItemTotalPrice;
        }
    }
}
