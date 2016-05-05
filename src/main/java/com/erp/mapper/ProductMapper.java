package com.erp.mapper;

import com.erp.model.Product;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;

public interface ProductMapper {
    int deleteByPrimaryKey(Integer id);

    @SelectKey(statement="select id from product where name=#{name} limit 1", keyProperty="id", before=false, resultType=int.class)
    int insert(Product record);

    int insertSelective(Product record);

    Product selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Product record);

    int updateByPrimaryKey(Product record);

    @Select("select id from product where name=#{name} limit 1")
    Integer getProductId(@Param("name") String productName);
}