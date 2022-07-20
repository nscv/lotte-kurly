package com.lotte.users.service;

import com.lotte.users.dto.ProfileDto;

import java.text.ParseException;

public interface UserService {
    String checkuser(String email) throws ParseException;
    int addprofile(ProfileDto profile);
}
