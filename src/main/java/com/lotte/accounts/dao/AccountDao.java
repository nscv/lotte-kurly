package com.lotte.accounts.dao;

import com.lotte.accounts.dto.AccountDto;
import com.lotte.accounts.dto.request.AccountBuyRequest;
import com.lotte.orders.dto.OrderProductsDto;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AccountDao {
    AccountDto selectAccountByUserNo(int userNo);
    void updateAccountByBuy(AccountDto accountDto);
    void updateAccountByRefund(AccountDto accountDto);
    void buyProducts(OrderProductsDto orderProductsDto);
    void refundProducts(OrderProductsDto orderProductsDto);

    void pay(AccountBuyRequest requestDto);
}
