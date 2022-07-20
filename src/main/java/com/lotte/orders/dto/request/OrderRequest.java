package com.lotte.orders.dto.request;

import java.util.List;

/* 주문 요청 */
public class OrderRequest {

    public static class OrderSheetDto {

        private List<Integer> orderCartItemNos;
        private Integer userNo;

        public OrderSheetDto() {}

        public List<Integer> getOrderCartItemNos() {
            return orderCartItemNos;
        }

        public Integer getUserNo() {
            return userNo;
        }

        public void setOrderCartItemNos(List<Integer> orderCartItemNos) {
            this.orderCartItemNos = orderCartItemNos;
        }

        public void setUserNo(Integer userNo) {
            this.userNo = userNo;
        }
    }

}
