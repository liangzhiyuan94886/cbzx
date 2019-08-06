package com.testdev.cbzx.dao;

import com.testdev.cbzx.entity.Product;

import java.util.List;

public interface ProductDao{
    List<Product> getProduct();

    //根据项目主键查询缺陷地址
    Product getBugAddressByProject(Integer project);

    //查默认展示项目
    List<Integer> getDefaultDisplay();

}
