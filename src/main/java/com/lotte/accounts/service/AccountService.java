package com.lotte.accounts.service;

import com.lotte.accounts.dto.AccountDto;
import com.lotte.accounts.dto.request.AccountBuyRequest;
import com.lotte.orders.dto.OrderProductsDto;

public interface AccountService {
    void pay(AccountBuyRequest requestDto);
    void refundProduct(AccountDto accountDto, OrderProductsDto orderProductsDto);

    AccountDto getUserAccount(Integer userNo); // 결제 화면에서 보여줄 사용자 계좌 정보
}
