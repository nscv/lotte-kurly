package com.lotte.accounts.service;

public interface AccountService {
    boolean canBuyProduct(int productNo, int buyCount, int userNo);
}
