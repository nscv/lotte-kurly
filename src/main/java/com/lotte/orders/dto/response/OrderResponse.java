package com.lotte.orders.dto.response;

import com.lotte.orders.dto.Order;
import com.lotte.orders.dto.OrderDetail;
import com.lotte.orders.dto.OrderCartItem;
import com.lotte.orders.dto.OrderUserDetail;
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

        private List<OrderCartItem> orderCartItems;
        private Integer orderNo;
        private Integer orderState;
        private String orderCreatedAt;
        private String orderAddress;

        public OrderDetailDto(List<OrderCartItem> orderCartItems, OrderDetail orderDetail) {
            this.orderCartItems = orderCartItems;
            this.orderNo = orderDetail.getOrderNo();
            this.orderState = orderDetail.getOrderState();
            this.orderCreatedAt = orderDetail.getOrderCreatedAt();
            this.orderAddress = orderDetail.getOrderAddress();
        }

        public List<OrderCartItem> getOrderCartItems() {
            return orderCartItems;
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

        public void setOrderCartItems(List<OrderCartItem> orderCartItems) {
            this.orderCartItems = orderCartItems;
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

    public static class OrderSheetDto {

        private List<OrderCartItem> orderCartItems;
        private OrderUserDetail orderUserDetail;
        // TODO: 쿠폰 DTO, 결제 DTO (Figma. 주문 페이지 참고)


        public OrderSheetDto(List<OrderCartItem> orderCartItems, OrderUserDetail orderUserDetail) {
            this.orderCartItems = orderCartItems;
            this.orderUserDetail = orderUserDetail;
        }

        public List<OrderCartItem> getOrderCartItems() {
            return orderCartItems;
        }

        public OrderUserDetail getOrderUserDetail() {
            return orderUserDetail;
        }

        public void setOrderCartItems(List<OrderCartItem> orderCartItems) {
            this.orderCartItems = orderCartItems;
        }

        public void setOrderUserDetail(OrderUserDetail orderUserDetail) {
            this.orderUserDetail = orderUserDetail;
        }
    }

}
