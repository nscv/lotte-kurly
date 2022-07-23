package com.lotte.orders.service;

import com.lotte.orders.dto.request.OrderRequest;
import com.lotte.orders.dto.response.OrderResponse;

public interface OrderService {

    /* 주문 목록 조회 (사용자 주문 내역) */
    OrderResponse.OrdersDto getOrders(Integer userNo);

    /* 주문 상세 */
    OrderResponse.OrderDetailDto getOrderDetail(Integer orderNo);

    /* 주문서 */
    OrderResponse.OrderSheetDto getOrderSheet(OrderRequest.OrderSheetDto requestDto);

    /* 주문 로직 */
    OrderResponse.CreateOrderDto order(OrderRequest.CreateOrderDto requestDto);
}
