package com.lotte.orders.dao;

import com.lotte.orders.dto.CreateOrder;
import com.lotte.orders.dto.Order;
import com.lotte.orders.dto.OrderCartItemNameAndImg;
import com.lotte.orders.dto.OrderDetail;
import com.lotte.orders.dto.OrderCartItem;
import com.lotte.orders.dto.OrderUserDetail;
import com.lotte.orders.exception.NotEnoughStocks;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface OrderDao {

    OrderCartItemNameAndImg selectCartItemNameAndImg(Integer orderNo);
    Integer selectOrderCartItemsCount(Integer orderNo);
    List<Order> selectOrders(Integer orderNo);

    List<OrderCartItem> selectOrderCartItems(Integer orderNo);
    OrderDetail selectOrderDetail(Integer orderNo);

    OrderUserDetail selectOrderUserDetail(Integer userNo);

    List<OrderCartItem> selectOrderCartItemsByCartItemNos(List<Integer> orderCartItemNos);

    List<NotEnoughStocks> selectNotEnoughStock(List<Integer> productNos);
    Integer insertOrder(CreateOrder createOrder);
    void insertOrderNoToCartItem(@Param("cartItemNos") List<Integer> cartItemNos
        , @Param("orderNo") Integer orderNo);
    void updateProductStockByOrder(List<Integer> orderCartItemNos);

}
