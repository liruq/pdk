package com.erp.mapper;

import com.erp.model.Comsumer;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

@Repository
public interface ComsumerMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Comsumer record);

    int insertSelective(Comsumer record);

    Comsumer selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Comsumer record);

    int updateByPrimaryKey(Comsumer record);
}