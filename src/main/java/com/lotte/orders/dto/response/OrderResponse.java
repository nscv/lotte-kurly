package com.lotte.orders.dto.response;

import com.lotte.orders.dto.Order;
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

}
