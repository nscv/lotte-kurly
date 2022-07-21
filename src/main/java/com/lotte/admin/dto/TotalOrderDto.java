package com.lotte.admin.dto;

public class TotalOrderDto {
    private String created_at;
    private int order_state;
    private int cnt;
    private int total;

    @Override
    public String toString() {
        return "TotalOrderDto{" +
                "created_at='" + created_at + '\'' +
                ", order_state=" + order_state +
                ", cnt=" + cnt +
                ", total=" + total +
                '}';
    }

    public String getCreated_at() {
        return created_at;
    }

    public void setCreated_at(String created_at) {
        this.created_at = created_at;
    }

    public int getOrder_state() {
        return order_state;
    }

    public void setOrder_state(int order_state) {
        this.order_state = order_state;
    }

    public int getCnt() {
        return cnt;
    }

    public void setCnt(int cnt) {
        this.cnt = cnt;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public TotalOrderDto(String created_at, int order_state, int cnt, int total) {
        this.created_at = created_at;
        this.order_state = order_state;
        this.cnt = cnt;
        this.total = total;
    }
}
