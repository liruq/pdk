package com.erp.mapper;

import com.erp.model.Inorder;
import org.springframework.stereotype.Service;


public interface InorderMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Inorder record);

    int insertSelective(Inorder record);

    Inorder selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Inorder record);

    int updateByPrimaryKey(Inorder record);
}