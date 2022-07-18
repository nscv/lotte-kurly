package com.lotte.db.vo;

public class DBTestVO {

    private String name;

    private String createdAt;

    public DBTestVO() {}

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }

    @Override
    public String toString() {
        return "DBTestVO{" +
            "name='" + name + '\'' +
            ", createdAt='" + createdAt + '\'' +
            '}';
    }
}
