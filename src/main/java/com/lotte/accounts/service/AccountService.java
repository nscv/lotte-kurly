package com.lotte.accounts.service;

import com.lotte.accounts.dto.AccountDto;
import com.lotte.orders.dto.OrderProductsDto;

public interface AccountService {
    boolean canBuyProduct(int productNo, int buyCount, int userNo);
    void payProduct(AccountDto accountDto, OrderProductsDto orderProductsDto);
    void refundProduct(AccountDto accountDto, OrderProductsDto orderProductsDto);

    AccountDto getUserAccount(Integer userNo); // 결제 화면에서 보여줄 사용자 계좌 정보
}
