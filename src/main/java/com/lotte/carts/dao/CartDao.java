package com.lotte.carts.dao;

import com.lotte.carts.dto.CartItem;
import com.lotte.carts.dto.CreateCartItem;
import com.lotte.carts.dto.UpdateCartItemCount;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CartDao {

    List<CartItem> selectCartItemsByCartNo(Integer cartNo);

    Integer insertCartItem(CreateCartItem cartItem);

    Integer selectCartItemProductPrice(Integer productNo);

    void updateCartItemCount(UpdateCartItemCount cartItem);
}
