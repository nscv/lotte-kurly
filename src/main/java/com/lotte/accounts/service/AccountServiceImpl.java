package com.lotte.accounts.service;

import com.lotte.accounts.dao.AccountDao;
import com.lotte.accounts.dto.AccountDto;
import com.lotte.orders.dto.OrderProductsDto;
import com.lotte.products.dao.ProductDao;
import com.lotte.products.dto.ProductDto;
import com.lotte.products.dto.ProductListDto;
import org.springframework.stereotype.Service;

@Service
public class AccountServiceImpl implements AccountService {

    private AccountDao accountDao;
    private ProductDao productDao;

    public AccountServiceImpl(AccountDao accountDao, ProductDao productDao) {
        this.accountDao = accountDao;
        this.productDao = productDao;
    }

    @Override
    public boolean canBuyProduct(int productNo, int buyCount, int userNo) {
        ProductListDto getProductInfo = productDao.selectProductByProductNo(productNo);

        boolean canBuyRemain = getProductInfo.getProductStock() >= buyCount;

        return canBuyRemain && haveEnoughAccount(getProductInfo, userNo);
    }

    public boolean haveEnoughAccount(ProductListDto getProductInfo, int userNo) {
        AccountDto getAccountInfo = accountDao.selectAccountByUserNo(userNo);

        return getAccountInfo.getAccountMoney() >= getProductInfo.getProductPrice();
    }

    @Override
    public void payProduct(AccountDto accountDto, OrderProductsDto orderProductsDto) {
        if(!this.canBuyProduct(orderProductsDto.getProductNo(), orderProductsDto.getOrderCount(), accountDto.getUserNo()))
            return;
        accountDao.buyProducts(orderProductsDto);
        accountDao.updateAccountByBuy(accountDto);
    }

    @Override
    public void refundProduct(AccountDto accountDto, OrderProductsDto orderProductsDto) {
        accountDao.refundProducts(orderProductsDto);
        accountDao.updateAccountByRefund(accountDto);
    }
}
