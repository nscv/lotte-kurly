package com.lotte.carts.service;

import com.lotte.carts.dao.CartDao;
import com.lotte.carts.dto.response.CartResponseDto;
import org.springframework.stereotype.Service;

@Service
public class CartService {

    private final CartDao cartDao;

    public CartService(CartDao cartDao) {
        this.cartDao = cartDao;
    }

    public CartResponseDto getCart(Integer cartNo) {
        return new CartResponseDto(cartDao.selectCartItemsByCartNo(cartNo));
    }
}
