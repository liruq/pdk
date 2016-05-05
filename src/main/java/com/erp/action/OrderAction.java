package com.erp.action;


import com.erp.model.Order;
import com.erp.service.OrderService;
import com.erp.service.ProductService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 *
 */
@Controller
public class OrderAction {

    Logger logger = LoggerFactory.getLogger(OrderAction.class);

    @Resource
    OrderService orderService;
    @Resource
    ProductService productService;
    /**
     * 订单登记
     */
    @RequestMapping("/order/add")
    @ResponseBody
    public String orderAdd(Order order, HttpServletRequest request){
        System.out.println("inOrder");
        byte b=0;
        order.setTpye(b);
        return orderService.add(order,request);
    }


    /**
     * 订单确认
     */
    @RequestMapping("/confirmOrderPage")
    public String confirmOrderPage(HttpServletRequest request){
        List<Order> orders=orderService.queryConfirm();
        for(Order order:orders){
            order.setProductName(productService.queryProduct(order.getProductId()).getName());
        }
        request.setAttribute("list",orders);
        return "orderConfirm";
    }

    /**
     * 订单确认
     */
    @RequestMapping("/confirmOrder")
    public String confirmOrder(){
        System.out.println("inOrder");
        return "inOrder";
    }

    /**
     * 退货订单登记
     */
    @RequestMapping("/reOrder/add")
    public String reOrderAdd(Order order, HttpServletRequest request){
        byte b=1;
        order.setTpye(b);
        order.setCount(0-order.getCount());
        return orderService.add(order,request);
    }

    /**
     * 销售订单查询
     */
    @RequestMapping("/order/list")
    public String orderList(){
        System.out.println("inOrder");
        return "inOrder";
    }

    /**
     * 退货订单查询
     */
    @RequestMapping("/reOrder/list")
    public String reOrderList(){
        System.out.println("inOrder");
        return "inOrder";
    }
}
