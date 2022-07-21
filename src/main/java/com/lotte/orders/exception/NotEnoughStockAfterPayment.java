package com.lotte.orders.exception;

import java.util.List;

public class NotEnoughStockAfterPayment extends RuntimeException {

    List<NotEnoughStocks> notEnoughStocks;

    public NotEnoughStockAfterPayment(
        List<NotEnoughStocks> notEnoughStocks) {
        this.notEnoughStocks = notEnoughStocks;
    }

    @Override
    public String toString() {
        String str = "";
        for (NotEnoughStocks stocks : notEnoughStocks) {
            str += stocks;
        }

        return str;
    }
}
