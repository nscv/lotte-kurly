package com.lotte.users.service;

import com.lotte.users.dto.ProfileDto;
import com.lotte.users.dto.UserDto;

import java.text.ParseException;

public interface UserService {
    String checkuser(String email) throws ParseException;
    int addprofile(ProfileDto profile);

    UserDto getUser(int userNo);
}
