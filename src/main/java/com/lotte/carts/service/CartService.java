package com.lotte.carts.service;

import com.lotte.carts.dao.CartDao;
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
}
