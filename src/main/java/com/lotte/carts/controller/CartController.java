package com.lotte.carts.controller;

import com.lotte.carts.dto.request.CartRequest;
import com.lotte.carts.dto.response.CartResponse;
import com.lotte.carts.service.CartService;
import java.time.LocalDateTime;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CartController {

    private static Logger logger = LoggerFactory.getLogger(CartController.class);
    private final CartService cartService;

    public CartController(CartService cartService) {
        this.cartService = cartService;
    }

    /* 장바구니 목록 (장바구니 아이템 목록) */
    @GetMapping("/carts/{cartNo}")
    public ResponseEntity<CartResponse.CartItemsDto> getCart(@PathVariable Integer cartNo) {
        logger.info("CartController.getCart(cartNo): {}", LocalDateTime.now());
        return ResponseEntity.ok(cartService.getCart(cartNo));
    }

    /* 장바구니 아이템 추가 */
    @PostMapping("/cart/items")
    public ResponseEntity<CartResponse.CreateCartItemDto> createCartItem(CartRequest.CreateCartItemDto requestDto) {
        logger.info("CartController.createCartItem(CartRequest.CreateCartItemDto): {}", LocalDateTime.now());
        return ResponseEntity.ok(cartService.createCartItem(requestDto));
    }

    /* 장바구니 아이템 수량 수정 */
    @PutMapping("/cart/items")
    public ResponseEntity<CartResponse.UpdateCartItemCountDto> updateCartItemCount(
        @RequestBody CartRequest.UpdateCartItemCountDto requestDto) {
        return ResponseEntity.ok(cartService.updateCartItemCount(requestDto));
    }
}
