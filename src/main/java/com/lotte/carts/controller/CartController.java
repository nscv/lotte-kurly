package com.lotte.carts.controller;

import com.lotte.carts.dto.response.CartResponseDto;
import com.lotte.carts.service.CartService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CartController {

    private final CartService cartService;

    public CartController(CartService cartService) {
        this.cartService = cartService;
    }

    @GetMapping("/carts/{cartNo}")
    public ResponseEntity<CartResponseDto> getCart(@PathVariable Integer cartNo) {
        return ResponseEntity.ok(cartService.getCart(cartNo));
    }
}
