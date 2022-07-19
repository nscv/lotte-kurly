package com.lotte.users.controller;

import com.lotte.products.controller.ProductController;
import com.lotte.users.dto.UserDto;
import com.lotte.users.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServlet;
import java.util.Date;

@Controller
public class UserController {

    private static final Logger logger = LoggerFactory.getLogger(ProductController.class);

    
    @Autowired
    UserService service;

    @ResponseBody
    @GetMapping("/userdata")
    public String Userdata(Model model, String email){
        logger.info("UserController Userdata()" + new Date());
        boolean isuser = service.checkuser(email);
        int userno;
        int isvalid;
        if(isuser){

            userno = service.getuserno(email);
            isvalid = service.checkvalid(email);

        } else {
            boolean signin = service.signin(email);
            userno = service.getuserno(email);
            isvalid = 0;
            if(signin){
                System.out.println("signin success");
            } else {
                System.out.println("signin fail");
            }
        }
        return Integer.toString(isvalid) + Integer.toString(userno);
    }

    @GetMapping("/test")
    public String test() {
        return "test";
    }

    @PostMapping("/add-profile")
    public String Addprofile(UserDto user){
        logger.info("UserController Addprofile()" + new Date());
        service.addprofile(user);
        return "/user/login";
    }
}
