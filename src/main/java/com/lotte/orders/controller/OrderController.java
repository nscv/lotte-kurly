package com.lotte.orders.controller;

import com.lotte.orders.dto.request.OrderRequest;
import com.lotte.orders.dto.response.OrderResponse;
import com.lotte.orders.exception.ErrorResponse;
import com.lotte.orders.exception.NotEnoughStockAfterPayment;
import com.lotte.orders.service.OrderServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;

@Controller
public class OrderController {

    private static final Logger logger = LoggerFactory.getLogger(OrderController.class);

    private final OrderServiceImpl orderService;

    public OrderController(OrderServiceImpl orderService) {
        this.orderService = orderService;
    }

    /* 주문 리스트 */
    @GetMapping("/orders")
    public ResponseEntity<OrderResponse.OrdersDto> getOrders(@RequestParam Integer userNo) {
        return ResponseEntity.ok(orderService.getOrders(userNo));
    }

    /* 주문 상세 */
    @GetMapping("/orders/{orderNo}")
    public ResponseEntity<OrderResponse.OrderDetailDto> getOrderDetail(@PathVariable Integer orderNo) {
        return ResponseEntity.ok(orderService.getOrderDetail(orderNo));
    }

    @GetMapping("/orders/sheet")
    public ResponseEntity<OrderResponse.OrderSheetDto> getOrderDetail(
        @ModelAttribute OrderRequest.OrderSheetDto requestDto) {
        return ResponseEntity.ok(orderService.getOrderSheet(requestDto));
    }

    @PostMapping("/orders")
    public ResponseEntity<OrderResponse.CreateOrderDto> order(OrderRequest.CreateOrderDto requestDto) {
        return ResponseEntity.ok(orderService.order(requestDto));
    }

    /* 결제 후 주문 재고가 없는 경우 예외 처리 */
    /* 프론트에서 이 예외를 받으면 결제 취소 API 수행 */
    @ResponseStatus(HttpStatus.OK)
    @ExceptionHandler(NotEnoughStockAfterPayment.class)
    public ResponseEntity<ErrorResponse> handleNotEnoughStockAfterPayment(NotEnoughStockAfterPayment e) {
        logger.error("[order exception]: {}", e);
        return ResponseEntity.ok(new ErrorResponse(1000, "not enough stock after payment"));
    }
}
