package com.lotte.orders.controller;

import com.lotte.orders.dto.request.OrderRequest;
import com.lotte.orders.dto.response.OrderResponse;
import com.lotte.orders.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class OrderController {

    private final OrderService orderService;

    public OrderController(OrderService orderService) {
        this.orderService = orderService;
    }

    @GetMapping("/orders")
    public ResponseEntity<OrderResponse.OrdersDto> getOrders(@RequestParam Integer userNo) {
        return ResponseEntity.ok(orderService.getOrders(userNo));
    }

    @GetMapping("/orders/{orderNo}")
    public ResponseEntity<OrderResponse.OrderDetailDto> getOrderDetail(@PathVariable Integer orderNo) {
        return ResponseEntity.ok(orderService.getOrderDetail(orderNo));
    }

    @GetMapping("/orders/sheet")
    public ResponseEntity<OrderResponse.OrderSheetDto> getOrderDetail(
        @ModelAttribute OrderRequest.OrderSheetDto requestDto) {
        return ResponseEntity.ok(orderService.getOrderSheet(requestDto));
    }
}
