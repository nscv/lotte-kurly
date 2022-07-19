package com.lotte.users.service;

import com.lotte.users.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    private UserDao dao;

    public Boolean getuser(String email) {
        int count = dao.getuser(email);
        System.out.println(count+"?");
        return count>0?True:False;
    }
}
