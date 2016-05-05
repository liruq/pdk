package com.erp.service;

import com.erp.mapper.UserMapper;
import com.erp.model.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;


@Service
public class OrderService {
    @Resource
    UserMapper userMapper;

    public User get(String account){
       return userMapper.selectByPrimaryKey(account);
    }

}
