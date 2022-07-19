package com.lotte.users.service;

import com.lotte.users.dao.UserDao;
import com.lotte.users.dto.UserDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    @Autowired
    private UserDao dao;

    public Boolean checkuser(String email) {
        int count = dao.checkuser(email);
        return count>0;
    }

    public Boolean signin(String email) {
        int count = dao.signin(email);
        return count>0;
    }

    public UserDto getuser(String email) {
        return dao.getuser(email);
    }

    public int checkvalid(String email) {
        return dao.checkvalid(email);
    }

    public int getuserno(String email) {
        return dao.getuserno(email);
    }

    public int addprofile(UserDto user) {
        return dao.addprofile(user);
    }

}
