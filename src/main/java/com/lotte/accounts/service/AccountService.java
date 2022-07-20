package com.lotte.accounts.service;

import com.lotte.accounts.dto.AccountDto;
import com.lotte.orders.dto.OrderProductsDto;

public interface AccountService {
    boolean canBuyProduct(int productNo, int buyCount, int userNo);
    void payProduct(AccountDto accountDto, OrderProductsDto orderProductsDto);
    void refundProduct(AccountDto accountDto, OrderProductsDto orderProductsDto);
}
