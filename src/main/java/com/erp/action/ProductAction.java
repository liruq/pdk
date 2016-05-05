package com.erp.action;


import com.erp.model.Inorder;
import com.erp.model.Product;
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
public class ProductAction {

    @Resource
    ProductService productService;

    Logger logger = LoggerFactory.getLogger(ProductAction.class);

    /**
     * 商品进货登记
     *
     */
    @RequestMapping("/inOrder/add")
    @ResponseBody
    public String inOrderAdd(Inorder inorder, HttpServletRequest request){
        System.out.println("inOrder");
        productService.inOrderAdd(inorder,request);
        return "success";
    }

    /**
     * 商品库存查询
     *
     */
    @RequestMapping("/stock")
    public String stock(HttpServletRequest request){
        List<Product> products=productService.queryAll();
        request.setAttribute("list",products);
        return "stock";
    }

    /**
     * 商品进货查询
     *
     */
    @RequestMapping("/inOrder/list")
    public String inOrderList(){
        System.out.println("inOrder");
        return "inOrder";
    }

}
