package com.erp.mapper;

import com.erp.model.Product;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface ProductMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Product record);

    int insertSelective(Product record);

    Product selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Product record);

    int updateByPrimaryKey(Product record);

    @Select("select id from product where name=#{name} limit 1")
    Integer getProductId(@Param("name") String productName);

    @Update("update product set count = count+#{count} where id=#{id}")
    @SelectKey(statement="select count from product where id=#{id}", keyProperty="id", before=false, resultType=int.class)
    int changeCount(@Param("count") int count,@Param("id")int id);

    @Select("select * from product")
    List<Product> queryAll();
}