package com.lotte.orders.controller;

import javax.servlet.http.HttpServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class OrderPageController {

    private static final Logger logger = LoggerFactory.getLogger(OrderPageController.class);

    /* 주문 내역 보기 */
    @GetMapping("/order/list")
    public String goOrderList() {
        return "order/orderlist";
    }

    /* 주문 상세 보기 */
    @GetMapping("/order/detail")
    public String goOrderDetail(HttpServletRequest req) {

        return "order/orderdetail";
    }

    /* 주문서 보기 */
    @GetMapping("/order/sheet")
    public String goOrderSheet(HttpServletRequest req) {
        return "order/ordersheet";
    }

}
