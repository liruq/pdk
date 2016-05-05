package com.erp.service;

import com.erp.mapper.OrderMapper;
import com.erp.model.Order;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;


@Service
public class OrderService {
    @Resource
    OrderMapper orderMapper;
    @Resource
    ProductService productService;
    public String add(Order order, HttpServletRequest request) {
        Integer productId = productService.getProductId(order.getProductName());
        if(productId==null){
            return "fail";
        }
        if(productService.getCount(productId)-order.getCount()<0){
            return "stock";
        }
        productService.changeCount(order.getCount(),productId);
        order.setProductId(productId);
        order.setOperateUserAccount((String) request.getSession().getAttribute("userId"));
        orderMapper.insertSelective(order);
    return "success";
    }

    public List<Order> queryConfirm(){
        return orderMapper.queryConfirm();
    }

    public List<Order> queryReOrder(){
        return orderMapper.queryReOrder();
    }

    public void confirmOrder(String expressCom, String expressNum, int id) {
        orderMapper.confirmOrder(expressCom,expressNum,id);
    }
}
