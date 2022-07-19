package com.lotte.carts.dao;

import com.lotte.carts.dto.CartItemDto;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CartDao {

    List<CartItemDto> selectCartItemsByCartNo(Integer cartNo);

}
