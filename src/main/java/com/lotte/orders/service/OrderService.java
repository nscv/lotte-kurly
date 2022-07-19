package com.lotte.orders.service;

import com.lotte.orders.dao.OrderDao;
import com.lotte.orders.dto.Order;
import com.lotte.orders.dto.response.OrderResponse;
import java.util.List;
import org.springframework.stereotype.Service;

@Service
public class OrderService {

    private final OrderDao orderDao;

    public OrderService(OrderDao orderDao) {
        this.orderDao = orderDao;
    }


    public OrderResponse.OrdersDto getOrders(Integer userNo) {
        List<Order> orders = orderDao.selectOrders(userNo);
        orders.forEach(order ->
            order.setProductNames(orderDao.selectCartItemNames(order.getOrderNo())));

        return new OrderResponse.OrdersDto(orders);
    }

}
