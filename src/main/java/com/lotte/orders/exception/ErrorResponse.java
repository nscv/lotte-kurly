package com.lotte.orders.exception;

public class ErrorResponse {

    private Integer code;
    private String message;

    public ErrorResponse(Integer code, String message) {
        this.code = code;
        this.message = message;
    }
}
