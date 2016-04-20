package com.pdk.manage.model.bd;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.pdk.manage.annotation.RelationColumn;
import com.pdk.manage.annotation.RepeatColumn;
import com.pdk.manage.model.IBaseVO;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.Id;
import javax.persistence.OrderBy;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Date;
@Table(name = "pdk_bd_goods")
public class Goods  implements IBaseVO {
    @Id
    private String id;
    @NotNull
    @OrderBy
    @RepeatColumn
    private String code;
    @NotNull
    @Size(max = 50)
    @RepeatColumn
    private String name;

    @RelationColumn(column="goodstype_id", relationKey="com.pdk.manage.model.bd.GoodsType")
    private String goodstype_id;

    @Transient
    private GoodsType goodsType;

    @NotNull
    private Short status;

    private String memo;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date ts;

    private Short dr;

    private String price;
    private String user;
    private String img;
    private String buyer;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code == null ? null : code.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getGoodstype_id() {
        return goodstype_id;
    }

    public void setGoodstype_id(String goodstype_id) {
        this.goodstype_id = goodstype_id;
    }

    public Short getStatus() {
        return status;
    }

    public void setStatus(Short status) {
        this.status = status;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo == null ? null : memo.trim();
    }

    public Date getTs() {
        return ts;
    }

    public void setTs(Date ts) {
        this.ts = ts;
    }

    public Short getDr() {
        return dr;
    }

    public void setDr(Short dr) {
        this.dr = dr;
    }

    public GoodsType getGoodsType() {
        return goodsType;
    }

    public void setGoodsType(GoodsType goodsType) {
        this.goodsType = goodsType;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getBuyer() {
        return buyer;
    }

    public void setBuyer(String buyer) {
        this.buyer = buyer;
    }
}