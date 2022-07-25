package com.lotte.crawling.dto;

//마켓컬리 데이터랑 이름 같아야 하므로 Camel 표기법 사용불가
public class CrawlingCategoryDto {
    private String no;
    private String name;
    private String pc_icon_url;

    public CrawlingCategoryDto(){}

    public CrawlingCategoryDto(String no, String name, String pc_icon_url) {
        this.no = no;
        this.name = name;
        this.pc_icon_url = pc_icon_url;
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

    public String getPc_icon_url() {
        return pc_icon_url;
    }

    public void setPc_icon_url(String pc_icon_url) {
        this.pc_icon_url = pc_icon_url;
    }

    @Override
    public String toString() {
        return "CrawlingCategoryDto{" +
                "no=" + no +
                ", name='" + name + '\'' +
                ", pc_icon_url='" + pc_icon_url + '\'' +
                '}';
    }
}
