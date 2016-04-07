package com.pdk.manage.dao.bd;




import org.apache.ibatis.jdbc.SQL;

import java.util.Map;

/**
 * Created by liruquan on 07/04/2016.
 */
public class GoodsProvider {
    public String genQuerybyPage(Map param){
        SQL sql=new SQL();
        sql.SELECT("*").FROM("pdk_bd_goods");
        String key=(String) param.get("key");
        if(key!=null){
            sql.WHERE("name = #{key}");
        }
        return sql.toString()+" limit #{offset},#{limit}";
    }
}
