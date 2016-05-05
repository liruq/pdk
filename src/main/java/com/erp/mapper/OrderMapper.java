package com.erp.mapper;

import com.erp.model.Order;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

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

    @Update("UPDATE `order` SET `expressCom`=#{expressCom}, `expressNum`=#{expressNum} WHERE  `id`=#{id}")
    void confirmOrder(@Param("expressCom")String expressCom,@Param("expressNum") String expressNum, @Param("id") int id);
}