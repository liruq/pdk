package com.erp.service;

import com.erp.mapper.InorderMapper;
import com.erp.model.Inorder;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;


@Service
public class ProductService {
    @Resource
    InorderMapper inorderMapper;


    public boolean inOrderAdd(Inorder inorder){
        inorderMapper.insert(inorder);
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
}
