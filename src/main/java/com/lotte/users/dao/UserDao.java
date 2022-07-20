package com.lotte.users.dao;

import com.lotte.users.dto.ProfileDto;
import com.lotte.users.dto.UserDto;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserDao {
    int checkuser(String email);

    int insertuser(String email);

    UserDto selectuser(String email);

    int checkvalid(String email);

    int selectuserno(String eamil);

    int insertprofile(ProfileDto profile);

    String selectbirth(int userNo);
}
