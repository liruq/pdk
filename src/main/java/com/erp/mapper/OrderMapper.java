package com.erp.mapper;

import com.erp.model.Order;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface OrderMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Order record);

    int insertSelective(Order record);

    Order selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Order record);

    int updateByPrimaryKey(Order record);

    @Select("select * from `order` where `tpye`=0")
    List<Order> queryConfirm();
}