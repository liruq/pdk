package com.erp.model;

public class Order {
    private Integer id;

    private Integer productId;

    private Integer count;

    private String comsumerId;

    private String price;

    private String brokerage;

    private Integer operateUserId;

    private String expressCom;

    private Integer expressNum;

    private String createTime;

    private String confirmTime;

    private Byte tpye;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public String getComsumerId() {
        return comsumerId;
    }

    public void setComsumerId(String comsumerId) {
        this.comsumerId = comsumerId == null ? null : comsumerId.trim();
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price == null ? null : price.trim();
    }

    public String getBrokerage() {
        return brokerage;
    }

    public void setBrokerage(String brokerage) {
        this.brokerage = brokerage == null ? null : brokerage.trim();
    }

    public Integer getOperateUserId() {
        return operateUserId;
    }

    public void setOperateUserId(Integer operateUserId) {
        this.operateUserId = operateUserId;
    }

    public String getExpressCom() {
        return expressCom;
    }

    public void setExpressCom(String expressCom) {
        this.expressCom = expressCom == null ? null : expressCom.trim();
    }

    public Integer getExpressNum() {
        return expressNum;
    }

    public void setExpressNum(Integer expressNum) {
        this.expressNum = expressNum;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime == null ? null : createTime.trim();
    }

    public String getConfirmTime() {
        return confirmTime;
    }

    public void setConfirmTime(String confirmTime) {
        this.confirmTime = confirmTime == null ? null : confirmTime.trim();
    }

    public Byte getTpye() {
        return tpye;
    }

    public void setTpye(Byte tpye) {
        this.tpye = tpye;
    }
}