package com.lotte.users.service;

import com.lotte.users.dao.UserDao;
import com.lotte.users.dto.ProfileDto;
import com.lotte.users.dto.UserDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

@Service
public class UserServiceImpl implements UserService{

    @Autowired
    private UserDao dao;

    @Override
    public String checkuser(String email) throws ParseException {
        int count = dao.checkuser(email);
        int userNo = 0;
        String userRole = "";
        String birth = "";
        String temp = "";
        int isValid = 0;
        if (count>0) {
            userNo = getuserno(email);
            isValid = checkvalid(email);
            userRole = checkrole(email);
            temp = userRole.equals("user") ? "0" : "1";
        } else {
            boolean usersiginin = signin(email);
            userNo = getuserno(email);
            isValid = 0;
            userRole = "user";
            temp = userRole.equals("user") ? "0" : "1";
        }
        return Integer.toString(isValid) + temp + Integer.toString(userNo);
    }

    public Boolean signin(String email) {
        int count = dao.insertuser(email);
        return count>0;
    }

    @Override
    public UserDto getUser(int userNo) {
        return dao.selectuser(userNo);
    }

    public int checkvalid(String email) {
        return dao.checkvalid(email);
    }

    public int getuserno(String email) {
        return dao.selectuserno(email);
    }

    public String checkrole(String email){ return dao.checkrole(email); }

    @Override
    public void addprofile(ProfileDto profile) {
        dao.insertprofile(profile);
    }

    public String getbirth(int userNo) throws ParseException {
        String birth = dao.selectbirth(userNo);
        boolean isbirth =  birthConfirm(birth);
        return birth;
    }

    public boolean birthConfirm(String birth) throws ParseException {
        /* 생일 날짜 비교 */
        Calendar getToday = Calendar.getInstance();
        getToday.setTime(new Date());
        String s_date = birth.substring(0,10);
        Date date = new SimpleDateFormat("yyyy-MM-dd").parse(s_date);
        Calendar cmpDate = Calendar.getInstance();
        cmpDate.setTime(date);

        long diffSec = (getToday.getTimeInMillis() - cmpDate.getTimeInMillis()) / 1000;
        long diffDays = diffSec / (24*60*60); //일자수 차이
        if(diffDays > -7 && diffDays < 8){
            return true;
        }
        return false;
    }
}
