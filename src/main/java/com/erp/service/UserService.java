package com.erp.service;

import com.erp.mapper.UserMapper;
import com.erp.model.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by li on 2016/5/5.
 */@Service
public class UserService {
    @Resource
    UserMapper userMapper;

    public User get(String account){
       return userMapper.selectByPrimaryKey(account);
    }

}
