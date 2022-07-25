package com.lotte.carts.service;

import com.lotte.carts.dto.request.CartRequest;
import com.lotte.carts.dto.response.CartResponse;

public interface CartService {

    /* 사용자 장바구니 목록 조회 */
    CartResponse.CartItemsDto getCart(Integer cartNo);

    /* 장바구니 상품 추가 */
    CartResponse.CreateCartItemDto createCartItem(CartRequest.CreateCartItemDto requestDto);

    /* 장바구니 상품 개수 추가 */
    CartResponse.UpdateCartItemCountDto updateCartItemCount(CartRequest.UpdateCartItemCountDto requestDto);
}
