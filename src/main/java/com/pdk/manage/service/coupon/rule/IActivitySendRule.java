package com.pdk.manage.service.coupon.rule;

import com.pdk.manage.exception.BusinessException;
import com.pdk.manage.model.coupon.Coupon;
import com.pdk.manage.model.sm.User;

import java.util.List;


public interface IActivitySendRule {
    List<Coupon> filterCoupons(List<Coupon> couponLst, User user) throws BusinessException;
}
