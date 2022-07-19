package com.lotte.carts.controller;

import com.lotte.carts.dto.response.CartResponseDto;
import com.lotte.carts.service.CartService;
import java.time.LocalDateTime;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CartController {

    private static Logger logger = LoggerFactory.getLogger(CartController.class);
    private final CartService cartService;

    public CartController(CartService cartService) {
        this.cartService = cartService;
    }

    @GetMapping("/carts/{cartNo}")
    public ResponseEntity<CartResponseDto> getCart(@PathVariable Integer cartNo) {
        logger.info("CartController.getCart(cartNo): {}", LocalDateTime.now());
        return ResponseEntity.ok(cartService.getCart(cartNo));
    }
}
