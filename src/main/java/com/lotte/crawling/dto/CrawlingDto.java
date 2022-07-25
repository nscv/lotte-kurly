package com.lotte.crawling.dto;

import java.io.Serializable;
import java.util.Date;

//마켓컬리 데이터랑 이름 같아야 하므로 Camel 표기법 사용불가
public class CrawlingDto implements Serializable {
    private String no;
    private String name;
    private String shortdesc;
    private String short_description;
    private String price;
    private String list_image_url;
    private String category_no;

    public CrawlingDto(){

    }

    public CrawlingDto(String no, String name, String shortdesc, String short_description, String price, String list_image_url,String category_no) {
        this.no = no;
        this.name = name;
        this.shortdesc = shortdesc;
        this.short_description = short_description;
        this.price = price;
        this.list_image_url = list_image_url;
        this.category_no = category_no;
    }

    public String getNo() {
        return no;
    }

    public void setNo(String no) {
        this.no = no;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getShortdesc() {
        return shortdesc;
    }

    public void setShortdesc(String shortdesc) {
        this.shortdesc = shortdesc;
    }

    public String getShort_description() {
        return short_description;
    }

    public void setShort_description(String short_description) {
        this.short_description = short_description;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getList_image_url() {
        return list_image_url;
    }

    public void setList_image_url(String list_image_url) {
        this.list_image_url = list_image_url;
    }

    public String getCategory_no() {
        return category_no;
    }

    public void setCategory_no(String category_no) {
        this.category_no = category_no;
    }

    @Override
    public String toString() {
        return "CrawlingDto{" +
                "no='" + no + '\'' +
                ", name='" + name + '\'' +
                ", shortdesc='" + shortdesc + '\'' +
                ", short_description='" + short_description + '\'' +
                ", price='" + price + '\'' +
                ", list_image_url='" + list_image_url + '\'' +
                ", category_no='" + category_no + '\'' +
                '}';
    }
}
