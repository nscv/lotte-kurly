package com.lotte.carts.dao;

import com.lotte.carts.dto.response.CartResponseDto;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CartDao {

    List<CartResponseDto.CartDto> selectCartItemsByCartNo(Integer cartNo);

}
