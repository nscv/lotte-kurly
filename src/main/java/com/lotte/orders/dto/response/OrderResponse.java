package com.lotte.orders.dto.response;

import com.lotte.orders.dto.Order;
<<<<<<< Updated upstream
=======
import com.lotte.orders.dto.OrderCartItem;
>>>>>>> Stashed changes
import java.util.List;

/* 주문 응답 */
public class OrderResponse {

    /* 주문 목록 DTO */
    public static class OrdersDto {
        private List<Order> orders;

        public OrdersDto(List<Order> orders) {
            this.orders = orders;
        }

        public List<Order> getOrders() {
            return orders;
        }
    }

<<<<<<< Updated upstream
=======
    /* 주문 상세 DTO */
    public static class OrderDetailDto {

        private List<OrderCartItem> orderCartItems;
        private Integer orderNo;
        private Integer orderState;
        private Integer orderCreatedAt;
        private Integer orderAddress;

        public List<OrderCartItem> getOrderCartItems() {
            return orderCartItems;
        }

        public Integer getOrderNo() {
            return orderNo;
        }

        public Integer getOrderState() {
            return orderState;
        }

        public Integer getOrderCreatedAt() {
            return orderCreatedAt;
        }

        public Integer getOrderAddress() {
            return orderAddress;
        }

        public void setOrderCartItems(List<OrderCartItem> orderCartItems) {
            this.orderCartItems = orderCartItems;
        }

        public void setOrderNo(Integer orderNo) {
            this.orderNo = orderNo;
        }

        public void setOrderState(Integer orderState) {
            this.orderState = orderState;
        }

        public void setOrderCreatedAt(Integer orderCreatedAt) {
            this.orderCreatedAt = orderCreatedAt;
        }

        public void setOrderAddress(Integer orderAddress) {
            this.orderAddress = orderAddress;
        }
    }

>>>>>>> Stashed changes
}
