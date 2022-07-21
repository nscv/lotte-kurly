package com.lotte.orders.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class OrderPageController {

    /* 주문 내역 보기 */
    @GetMapping("/order/list")
    public String goOrderList() {
        return "order/orderlist";
    }

    /* 주문 상세 보기 */
    @GetMapping("/order/detail")
    public String goOrderDetail() {
        return "order/orderdetail";
    }

    /* 주문서 보기 */
    @GetMapping("/order/sheet")
    public String goOrderSheet() {
        return "order/sheet";
    }

}
