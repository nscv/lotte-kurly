package com.lotte.users.dao;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserDao {
    int getuser(String email);
}
