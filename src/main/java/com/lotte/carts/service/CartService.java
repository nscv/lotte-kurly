package com.lotte.carts.service;

import com.lotte.carts.dao.CartDao;
import com.lotte.carts.dto.UpdateCartItemCount;
import com.lotte.carts.dto.request.CartRequest;
import com.lotte.carts.dto.CreateCartItem;
import com.lotte.carts.dto.response.CartResponse;
import org.springframework.stereotype.Service;

@Service
public class CartService {

    private final CartDao cartDao;

    public CartService(CartDao cartDao) {
        this.cartDao = cartDao;
    }

    public CartResponse.CartItemsDto getCart(Integer cartNo) {
        return new CartResponse.CartItemsDto(cartDao.selectCartItemsByCartNo(cartNo));
    }

    public CartResponse.CreateCartItemDto createCartItem(CartRequest.CreateCartItemDto requestDto) {
        CreateCartItem cCartItem = new CreateCartItem(requestDto);
        cartDao.insertCartItem(cCartItem);

        return new CartResponse.CreateCartItemDto(cCartItem.getCartItemNo());
    }

    public CartResponse.UpdateCartItemCountDto updateCartItemCount(
        Integer cartItemNo, CartRequest.UpdateCartItemCountDto requestDto) {
        // 장바구니 아이템의 상품 번호로 상품 가격 조회
        Integer productPrice = cartDao.selectCartItemProductPrice(requestDto.getProductNo());

        // 장바구니 아이템 개수와 총 가격 수정 정보
        UpdateCartItemCount uCartItem = new UpdateCartItemCount(cartItemNo, requestDto.getCartItemCount(), productPrice);
        cartDao.updateCartItemCount(uCartItem);

        return new CartResponse.UpdateCartItemCountDto(uCartItem);
    }
}
