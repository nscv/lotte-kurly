package com.lotte.accounts.service;

import com.lotte.accounts.dao.AccountDao;
import com.lotte.accounts.dto.AccountDto;
import com.lotte.coupons.dao.CouponDao;
import com.lotte.coupons.dto.UserCouponInfo;
import com.lotte.orders.dto.OrderProductsDto;
import com.lotte.products.dao.ProductDao;
import com.lotte.products.dto.ProductListDto;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AccountServiceImpl implements AccountService {

    private AccountDao accountDao;
    private ProductDao productDao;
    private CouponDao couponDao;

    public AccountServiceImpl(AccountDao accountDao, ProductDao productDao, CouponDao couponDao) {
        this.accountDao = accountDao;
        this.productDao = productDao;
        this.couponDao = couponDao;
    }

    @Override
    public boolean canBuyProduct(int productNo, int buyCount, int userNo) {
        ProductListDto getProductInfo = this.getProduct(productNo);

        boolean canBuyRemain = getProductInfo.getProductStock() >= buyCount;

        return canBuyRemain && haveEnoughAccount(getProductInfo, userNo);
    }

    public ProductListDto getProduct(int productNo) {
        return productDao.selectProductByProductNo(productNo);
    }
    public List<UserCouponInfo> getCouponList(int userNo) {
        return couponDao.selectCouponByUser(userNo);
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

    @Override
    public AccountDto getUserAccount(Integer userNo) {
        return accountDao.selectAccountByUserNo(userNo);
    }
}
