package com.pdk.manage.dao.bd;

import com.pdk.manage.dao.common.BaseDao;
import com.pdk.manage.dao.common.BusinessLogicMapper;
import com.pdk.manage.model.bd.Goods;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface GoodsDao extends BaseDao<Goods>, BusinessLogicMapper<Goods> {

    List<Goods> selectByCondition(@Param("code") String code, @Param("name") String name, @Param("goodstypeId") String goodstypeId);

    Goods getGoods(@Param("id")String id) ;

    List<Goods> mySelect();

    List<Goods> mySelectLike(@Param("searchText") String searchText);

//    @SelectProvider("")
    @SelectProvider(type = GoodsProvider.class,method = "genQuerybyPage")
    List<Goods> querybyPage(@Param("offset")int offset,@Param("limit")int limit,@Param("key")String key);

    @Select("select *,b.name as goodsType from pdk_bd_goods a left join pdk_bd_goodstype b on a.goodstype_id=b.id where id=#{id}")
    Goods querybyId(@Param("id")String id);

    @Select("select *,b.name as goodsType from pdk_bd_goods a left join pdk_bd_goodstype b on a.goodstype_id=b.id where a.user=#{user}")
    List<Goods> queryByUser(@Param("user")String user);
}