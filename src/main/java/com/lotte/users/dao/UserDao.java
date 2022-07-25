package com.lotte.users.dao;

import com.lotte.users.dto.InsertUser;
import com.lotte.users.dto.ProfileDto;
import com.lotte.users.dto.UserDto;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserDao {
    int checkuser(String email);

    int insertuser(InsertUser iUser);
    int insertcart(InsertUser iUser);

    UserDto selectuser(int userNo);

    int checkvalid(String email);

    String checkrole(String email);


    int selectuserno(String eamil);

    void insertprofile(ProfileDto profile);

    String selectbirth(int userNo);
}
