package com.lotte.accounts.controller;

import com.lotte.accounts.service.AccountService;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import static org.junit.jupiter.api.Assertions.*;

@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/applicationContext.xml",
        "file:src/main/webapp/WEB-INF/spring/servlet-context.xml"})
class AccountControllerTest {

    @Autowired
    private AccountService accountService;

    @Test
    void canBuyProduct() {
        int productNo = 141562;
        int buyCount = 1;
        int userNo = 5;
        assertEquals(accountService.canBuyProduct(productNo, buyCount, userNo), false);
        productNo = 6482;
        assertEquals(accountService.canBuyProduct(productNo, buyCount, userNo), true);
        buyCount = 2;
        assertEquals(accountService.canBuyProduct(productNo, buyCount, userNo), true);
    }
}