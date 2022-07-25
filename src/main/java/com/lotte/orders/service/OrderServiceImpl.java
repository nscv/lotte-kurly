package com.lotte.orders.service;

import com.lotte.orders.dao.OrderDao;
import com.lotte.orders.dto.CreateOrder;
import com.lotte.orders.dto.Order;
import com.lotte.orders.dto.OrderCartItemNameAndImg;
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
public class OrderServiceImpl implements OrderService {

    private final OrderDao orderDao;

    public OrderServiceImpl(OrderDao orderDao) {
        this.orderDao = orderDao;
    }

    @Override
    public OrderResponse.OrdersDto getOrders(Integer userNo) {
        List<Order> orders = orderDao.selectOrders(userNo);

        for (Order order : orders) {
            Integer orderNo = order.getOrderNo();

            OrderCartItemNameAndImg cartItemNamesAndImg =
                orderDao.selectCartItemNameAndImg(orderNo);

            order.setCartItemNameAndProductImgNewName(cartItemNamesAndImg); // 첫 번째 장바구니 아이템 이름과 이미지
            order.setCartItemsCount(orderDao.selectOrderCartItemsCount(orderNo) - 1); // 장바구니 아이템 총 개수
        }

        return new OrderResponse.OrdersDto(orders);
    }

    @Override
    public OrderResponse.OrderDetailDto getOrderDetail(Integer orderNo) {
        // 주문 목록에 있는 상품 목록 (장바구니 아이템 목록) 가져오기
        List<OrderCartItem> orderCartItems = orderDao.selectOrderCartItems(orderNo);

        // 주문 정보 가져오기
        OrderDetail orderDetail = orderDao.selectOrderDetail(orderNo);

        return new OrderDetailDto(orderCartItems, orderDetail);
    }

    @Override
    public OrderResponse.OrderSheetDto getOrderSheet(OrderRequest.OrderSheetDto requestDto) {

        // 주문 목록에 있는 상품 목록 (장바구니 아이템 목록)
        List<OrderCartItem> orderCartItems = orderDao.selectOrderCartItemsByCartItemNos(requestDto.getOrderCartItemNos());

        // 주문한 사용자 정보
        OrderUserDetail orderUserDetail = orderDao.selectOrderUserDetail(requestDto.getUserNo());

        return new OrderResponse.OrderSheetDto(orderCartItems, orderUserDetail);
    }

    @Override
    public OrderResponse.CreateOrderDto order(OrderRequest.CreateOrderDto requestDto) {

        List<Integer> orderCartItemNos = requestDto.getOrderCartItemNos();

        // 재고 확인
        List<NotEnoughStocks> notEnoughStocks = orderDao.selectNotEnoughStock(orderCartItemNos);


        // 재고가 없다면 결제 취소 (Exception)
        if (!notEnoughStocks.isEmpty()) {
            throw new NotEnoughStockAfterPayment(notEnoughStocks);
        }

        // 재고가 있다면 주문 처리
        // 주문 레코드 저장에 필요한 DTO 생성 후, insert 쿼리 수행
        CreateOrder createOrder = new CreateOrder(requestDto);
        orderDao.insertOrder(createOrder);

        // 주문한 장바구니 아이템 개수 만큼 상품 재고에서 차감
        orderDao.updateProductStockByOrder(orderCartItemNos);

        // 장바구니 아이템에 생성한 주문 번호 매핑
        orderDao.insertOrderNoToCartItem(orderCartItemNos, createOrder.getOrderNo());

        return new OrderResponse.CreateOrderDto(createOrder.getOrderNo());
    }

}
