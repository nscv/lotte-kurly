package com.lotte.orders.service;

import com.lotte.orders.dao.OrderDao;
import com.lotte.orders.dto.CreateOrder;
import com.lotte.orders.dto.Order;
import com.lotte.orders.dto.OrderDetail;
import com.lotte.orders.dto.OrderCartItem;
import com.lotte.orders.dto.OrderUserDetail;
import com.lotte.orders.dto.request.OrderRequest;
import com.lotte.orders.dto.request.OrderRequest.CreateOrderDto;
import com.lotte.orders.dto.response.OrderResponse;
import com.lotte.orders.dto.response.OrderResponse.OrderDetailDto;
import com.lotte.orders.exception.NotEnoughStockAfterPayment;
import com.lotte.orders.exception.NotEnoughStocks;
import java.util.List;
import java.util.stream.Collectors;
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

    public OrderResponse.OrderDetailDto getOrderDetail(Integer orderNo) {
        // 주문 목록에 있는 상품 목록 (장바구니 아이템 목록) 가져오기
        List<OrderCartItem> orderCartItems = orderDao.selectOrderCartItemsByOrderNo(orderNo);

        // 주문 정보 가져오기
        OrderDetail orderDetail = orderDao.selectOrderDetail(orderNo);

        return new OrderDetailDto(orderCartItems, orderDetail);
    }

    public OrderResponse.OrderSheetDto getOrderSheet(OrderRequest.OrderSheetDto requestDto) {

        // 주문 목록에 있는 상품 목록 (장바구니 아이템 목록)
        List<OrderCartItem> orderCartItems = orderDao.selectOrderCartItemsByCartItemNos(requestDto.getOrderCartItemNos());

        // 주문한 사용자 정보
        OrderUserDetail orderUserDetail = orderDao.selectOrderUserDetail(requestDto.getUserNo());

        return new OrderResponse.OrderSheetDto(orderCartItems, orderUserDetail);
    }

    public OrderResponse.CreateOrderDto order(OrderRequest.CreateOrderDto requestDto) {

        List<Integer> productNos = requestDto.getCartItems().stream()
            .map(CreateOrderDto.CartItem::getProductNo).collect(Collectors.toList());

        // 재고 확인
        List<NotEnoughStocks> notEnoughStocks = orderDao.selectEnoughStock(productNos);


        // 재고가 없다면 결제 취소 (Exception)
        if (!notEnoughStocks.isEmpty()) {
            throw new NotEnoughStockAfterPayment(notEnoughStocks);
        }

        // 재고가 있다면 주문 처리
        // 주문 레코드 저장에 필요한 DTO 생성 후, insert 쿼리 수행
        CreateOrder createOrder = new CreateOrder(requestDto);
        orderDao.insertOrder(createOrder);

        // 장바구니 아이템에 생성한 주문 번호 매핑
        List<Integer> cartItemNos = requestDto.getCartItems().stream()
            .map(CreateOrderDto.CartItem::getCartItemNo).collect(Collectors.toList());
        orderDao.insertOrderNoToCartItem(cartItemNos);

        return new OrderResponse.CreateOrderDto(createOrder.getOrderNo());
    }

}
