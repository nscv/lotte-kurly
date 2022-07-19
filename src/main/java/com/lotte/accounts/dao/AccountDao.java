package com.lotte.accounts.dao;

import com.lotte.accounts.dto.AccountDto;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AccountDao {
    AccountDto selectAccountByUserNo(int userNo);
}
