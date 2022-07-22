package com.lotte.accounts.dto.request;

import java.math.BigDecimal;

public class AccountBuyRequest {

    private BigDecimal orderTotalPrice;
    private Integer userNo;

    public BigDecimal getOrderTotalPrice() {
        return orderTotalPrice;
    }

    public void setOrderTotalPrice(BigDecimal orderTotalPrice) {
        this.orderTotalPrice = orderTotalPrice;
    }

    public Integer getUserNo() {
        return userNo;
    }

    public void setUserNo(Integer userNo) {
        this.userNo = userNo;
    }
}
