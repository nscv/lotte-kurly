package com.lotte.carts.dto.request;

public class CartRequest {

    public static class CreateCartItemDto {
        private Integer productNo;
        private Integer cartNo;
        private Integer cartItemCount;

        public CreateCartItemDto() {}

        public Integer getProductNo() {
            return productNo;
        }

        public Integer getCartNo() {
            return cartNo;
        }

        public Integer getCartItemCount() {
            return cartItemCount;
        }

        public void setProductNo(Integer productNo) {
            this.productNo = productNo;
        }

        public void setCartNo(Integer cartNo) {
            this.cartNo = cartNo;
        }

        public void setCartItemCount(Integer cartItemCount) {
            this.cartItemCount = cartItemCount;
        }
    }


    public static class UpdateCartItemCountDto {

        private Integer cartItemCount;

        private Integer productNo;

        public Integer getCartItemCount() {
            return cartItemCount;
        }

        public Integer getProductNo() {
            return productNo;
        }

        public void setCartItemCount(Integer cartItemCount) {
            this.cartItemCount = cartItemCount;
        }

        public void setProductNo(Integer productNo) {
            this.productNo = productNo;
        }
    }
}
