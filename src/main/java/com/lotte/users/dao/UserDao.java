package com.lotte.users.dao;

import com.lotte.users.dto.UserDto;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserDao {
    int checkuser(String email);

    int signin(String email);

    UserDto getuser(String email);

    int checkvalid(String email);

    int getuserno(String eamil);

    int addprofile(UserDto user);
}
