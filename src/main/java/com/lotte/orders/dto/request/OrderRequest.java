package com.lotte.orders.dto.request;

import com.lotte.carts.dto.CartItem;
import java.util.List;

/* 주문 요청 */
public class OrderRequest {

    /* 주문서 DTO */
    public static class OrderSheetDto {

        private List<Integer> orderCartItemNos;
        private Integer userNo;

        public OrderSheetDto() {}

        public List<Integer> getOrderCartItemNos() {
            return orderCartItemNos;
        }

        public Integer getUserNo() {
            return userNo;
        }

        public void setOrderCartItemNos(List<Integer> orderCartItemNos) {
            this.orderCartItemNos = orderCartItemNos;
        }

        public void setUserNo(Integer userNo) {
            this.userNo = userNo;
        }
    }

    /* 주문하기 DTO */
    public static class CreateOrderDto {

        private List<Integer> orderCartItemNos;
        private Integer userNo;
        private String orderAddress;
        private String orderTotalPrice;

        public List<Integer> getOrderCartItemNos() {
            return orderCartItemNos;
        }

        public Integer getUserNo() {
            return userNo;
        }

        public String getOrderAddress() {
            return orderAddress;
        }

        public String getOrderTotalPrice() {
            return orderTotalPrice;
        }

        public void setOrderCartItemNos(List<Integer> orderCartItemNos) {
            this.orderCartItemNos = orderCartItemNos;
        }

        public void setUserNo(Integer userNo) {
            this.userNo = userNo;
        }

        public void setOrderAddress(String orderAddress) {
            this.orderAddress = orderAddress;
        }

        public void setOrderTotalPrice(String orderTotalPrice) {
            this.orderTotalPrice = orderTotalPrice;
        }
    }
}
