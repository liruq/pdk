package com.pdk.manage.dao.common;

import tk.mybatis.mapper.common.Mapper;

/**
 *
 */
public interface BaseDao<T> extends Mapper<T>, BatchLogicDeleteMapper<T>, CommonSelectMapper<T>, InsertListMapper<T> {

}
