package com.lotte.accounts.service;

import com.lotte.accounts.dao.AccountDao;
import com.lotte.accounts.dto.AccountDto;
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
        System.out.println(getProductInfo);
        System.out.println(canBuyRemain);
        System.out.println(accountDao.selectAccountByUserNo(userNo));
        System.out.println(haveEnoughAccount(productNo, userNo));

        return canBuyRemain && haveEnoughAccount(productNo, userNo);
    }

    public boolean haveEnoughAccount(int productNo, int userNo) {
        ProductListDto getProductInfo = productDao.selectProductByProductNo(productNo);
        AccountDto getAccountInfo = accountDao.selectAccountByUserNo(userNo);

        return getAccountInfo.getAccountMoney() >= getProductInfo.getProductPrice();
    }
}
