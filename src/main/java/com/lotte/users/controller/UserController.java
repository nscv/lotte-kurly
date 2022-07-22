package com.lotte.users.controller;

import com.lotte.products.controller.ProductController;
import com.lotte.users.dto.ProfileDto;
import com.lotte.users.dto.UserDto;
import com.lotte.users.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.text.ParseException;
import java.util.Date;

@Controller
public class UserController {

    private static final Logger logger = LoggerFactory.getLogger(ProductController.class);


    private final UserService userService;

    public UserController(UserService userService){
        this.userService = userService;
    }

    @ResponseBody
    @GetMapping("/userdata")
    public String Userdata(Model model, String email) throws ParseException {
        logger.info("UserController Userdata()" + new Date());
        return userService.checkuser(email);
    }

    @GetMapping("/profile")
    public String test() {
        return "/user/profile";
    }

    @GetMapping("/add-profile")
    public String Addprofile(ProfileDto profile){
        logger.info("UserController Addprofile()" + new Date());
        System.out.println(profile.getUserNo());
        System.out.println(profile.getUserAddress());
        System.out.println(profile.getUserBirth());
        System.out.println(profile.getUserNickname());
        System.out.println(profile.getUserPhone());
        userService.addprofile(profile);

        return "redirect:product/main";
    }

    @GetMapping("/mypage")
    public String mypage() {
        return "/user/mypage";
    }

    @ResponseBody
    @GetMapping("/getuser")
    public UserDto getuser(Model model, int userNo) {
        return userService.getUser(userNo);
    }
}
