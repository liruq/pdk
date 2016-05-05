package com.erp.action;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 */
@Controller
public class OrderAction {

    Logger logger = LoggerFactory.getLogger(OrderAction.class);

    /**
     * 订单登记
     */
    @RequestMapping("/order/add")
    public String orderAdd(){
        System.out.println("inOrder");
        return "inOrder";
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
    public String reOrderAdd(){
        System.out.println("inOrder");
        return "inOrder";
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
