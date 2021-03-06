package com.lotte.accounts.controller;

import com.lotte.accounts.dto.AccountDto;
import com.lotte.accounts.dto.request.AccountBuyRequest;
import com.lotte.accounts.service.AccountService;
import com.lotte.orders.dto.OrderProductsDto;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/account")
public class AccountController {

    private AccountService accountService;

    public AccountController(AccountService accountService) {
        this.accountService = accountService;
    }

    /*
     TODO: 가상계좌를 사용하고 있으므로 계좌에 돈이 있을 때만 결제할 수 있고
            실제로는 남아있는 재고의 상태만 관리할 것
     */
    @RequestMapping("/test")
    public String Test() {
        return "admin/axis";
    }

    @ResponseBody
    @PutMapping("/pay")
    public boolean buy(@RequestBody AccountBuyRequest requestDto) {
        try {
            accountService.pay(requestDto);
        } catch(Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    @ResponseBody
    @PostMapping("/refund")
    public boolean refund(AccountDto accountDto, OrderProductsDto orderProductsDto) {
        try {
            accountService.refundProduct(accountDto, orderProductsDto);
        } catch(Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    @ResponseBody
    @GetMapping("/{userNo}")
    public AccountDto getUserAccount(@PathVariable Integer userNo) {
        return accountService.getUserAccount(userNo);
    }
}
