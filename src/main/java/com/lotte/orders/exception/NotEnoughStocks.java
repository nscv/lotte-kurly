package com.lotte.orders.exception;

public class NotEnoughStocks {

    private Integer productNo;
    private Integer productStock;

    private Integer cartItemNo;
    private Integer cartItemCount;

    public Integer getProductNo() {
        return productNo;
    }

    public void setProductNo(Integer productNo) {
        this.productNo = productNo;
    }

    public Integer getProductStock() {
        return productStock;
    }

    public void setProductStock(Integer productStock) {
        this.productStock = productStock;
    }

    public Integer getCartItemNo() {
        return cartItemNo;
    }

    public void setCartItemNo(Integer cartItemNo) {
        this.cartItemNo = cartItemNo;
    }

    public Integer getCartItemCount() {
        return cartItemCount;
    }

    public void setCartItemCount(Integer cartItemCount) {
        this.cartItemCount = cartItemCount;
    }

    @Override
    public String toString() {
        return "product no: " + productNo + " product stock: " + productStock + "\n"
            + "cart item no: " + cartItemNo + " cart item count: " + cartItemCount;
    }
}
