package com.erp.mapper;

import com.erp.model.Inorder;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface InorderMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Inorder record);

    int insertSelective(Inorder record);

    Inorder selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Inorder record);

    int updateByPrimaryKey(Inorder record);

    @Select("select * from inorder")
    List<Inorder> list();
}