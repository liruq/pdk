package com.erp.service;

import com.erp.mapper.InorderMapper;
import com.erp.mapper.ProductMapper;
import com.erp.model.Inorder;
import com.erp.model.Product;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;


@Service
public class ProductService {
    @Resource
    InorderMapper inorderMapper;
    @Resource
    ProductMapper productMapper;

    public int getCount(int id){
        return productMapper.selectByPrimaryKey(id).getCount();
    }

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

    public int changeCount(int count,int id){
        return productMapper.changeCount(count,id);
    }


    public List<Inorder> inOrderList(){

        return inorderMapper.list();
    }

    public Integer getProductId(String productName){
        return productMapper.getProductId(productName);
    }

    public Product queryProduct(int id){
        return productMapper.selectByPrimaryKey(id);
    }

    public List<Product> queryAll() {
        return productMapper.queryAll();
    }
}
