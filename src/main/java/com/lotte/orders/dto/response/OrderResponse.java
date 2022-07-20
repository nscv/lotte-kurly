package com.lotte.orders.dto.response;

import com.lotte.orders.dto.Order;
import com.lotte.orders.dto.OrderDetail;
import com.lotte.orders.dto.OrderDetailCartItem;
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

    /* 주문 상세 DTO */
    public static class OrderDetailDto {

        private List<OrderDetailCartItem> orderDetailCartItems;
        private Integer orderNo;
        private Integer orderState;
        private String orderCreatedAt;
        private String orderAddress;

        public OrderDetailDto(List<OrderDetailCartItem> orderDetailCartItems, OrderDetail orderDetail) {
            this.orderDetailCartItems = orderDetailCartItems;
            this.orderNo = orderDetail.getOrderNo();
            this.orderState = orderDetail.getOrderState();
            this.orderCreatedAt = orderDetail.getOrderCreatedAt();
            this.orderAddress = orderDetail.getOrderAddress();
        }

        public List<OrderDetailCartItem> getOrderCartItems() {
            return orderDetailCartItems;
        }

        public Integer getOrderNo() {
            return orderNo;
        }

        public Integer getOrderState() {
            return orderState;
        }

        public String getOrderCreatedAt() {
            return orderCreatedAt;
        }

        public String getOrderAddress() {
            return orderAddress;
        }

        public void setOrderCartItems(List<OrderDetailCartItem> orderDetailCartItems) {
            this.orderDetailCartItems = orderDetailCartItems;
        }

        public void setOrderNo(Integer orderNo) {
            this.orderNo = orderNo;
        }

        public void setOrderState(Integer orderState) {
            this.orderState = orderState;
        }

        public void setOrderCreatedAt(String orderCreatedAt) {
            this.orderCreatedAt = orderCreatedAt;
        }

        public void setOrderAddress(String orderAddress) {
            this.orderAddress = orderAddress;
        }
    }

}
