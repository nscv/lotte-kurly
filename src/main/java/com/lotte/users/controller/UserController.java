package com.lotte.users.controller;

import com.lotte.users.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Date;

@Controller
public class UserController {

    Logger logger = LoggerFactory.getLogger(UserController.class);
    
    @Autowired
    UserService service;

    @GetMapping("/userdata")
    public String Userdata(String email){
        logger.info("UserController Userdata()" + new Date());
        String str = service.getuser(email);
        System.out.println(str);
        System.out.println(email);
        return "";
    }
}
