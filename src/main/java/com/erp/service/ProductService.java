package com.erp.service;

import com.erp.mapper.InorderMapper;
import com.erp.mapper.ProductMapper;
import com.erp.model.Inorder;
import com.erp.model.Product;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;


@Service
public class ProductService {
    @Resource
    InorderMapper inorderMapper;
    @Resource
    ProductMapper productMapper;


    public boolean inOrderAdd(Inorder inorder, HttpServletRequest request) {
        Integer productId = getProductId(inorder.getProductName());
        if (productId == null) {
            Product product = new Product();
            product.setName(inorder.getProductName());
            productMapper.insertSelective(product);
            inorder.setProductId(product.getId());
        } else {
            inorder.setProductId(productId);
        }
        String user = (String) request.getSession().getAttribute("userId");
        inorder.setOperateUserAccount(user);
        inorderMapper.insertSelective(inorder);
        return true;
    }


    public String stock(){
        System.out.println("inOrder");
        return "inOrder";
    }


    public String inOrderList(){
        System.out.println("inOrder");
        return "inOrder";
    }

    public Integer getProductId(String productName){
        return productMapper.getProductId(productName);
    }
}
