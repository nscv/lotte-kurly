package com.lotte.carts.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CartPageController {

    @GetMapping("/cart")
    public String home() {
        return "cart/cart";
    }

}
