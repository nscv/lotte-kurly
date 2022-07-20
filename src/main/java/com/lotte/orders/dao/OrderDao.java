package com.lotte.orders.dao;

import com.lotte.orders.dto.Order;
import com.lotte.orders.dto.OrderDetail;
import com.lotte.orders.dto.OrderDetailCartItem;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface OrderDao {

    List<String> selectCartItemNames(Integer orderNo);
    List<Order> selectOrders(Integer orderNo);

    List<OrderDetailCartItem> selectOrderCartItems(Integer orderNo);
    OrderDetail selectOrderDetail(Integer orderNo);


}
