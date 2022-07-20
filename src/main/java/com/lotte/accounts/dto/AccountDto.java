package com.lotte.accounts.dto;

public class AccountDto {
    private int userNo;
    private int accountMoney;
    private int accountPoint;

    public AccountDto(int userNo, int accountMoney, int accountPoint) {
        this.userNo = userNo;
        this.accountMoney = accountMoney;
        this.accountPoint = accountPoint;
    }

    public int getUserNo() {
        return userNo;
    }

    public void setUserNo(int userNo) {
        this.userNo = userNo;
    }

    public int getAccountMoney() {
        return accountMoney;
    }

    public void setAccountMoney(int accountMoney) {
        this.accountMoney = accountMoney;
    }

    public int getAccountPoint() {
        return accountPoint;
    }

    public void setAccountPoint(int accountPoint) {
        this.accountPoint = accountPoint;
    }

    @Override
    public String toString() {
        return "AccountDto{" +
                "userNo=" + userNo +
                ", accountMoney=" + accountMoney +
                ", accountPoint=" + accountPoint +
                '}';
    }
}
