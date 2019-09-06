package com.testdev.cbzx.dao;

import com.testdev.cbzx.entity.Issues;
import com.testdev.cbzx.entity.Product;
import com.testdev.cbzx.entity.ProductType;

import java.util.List;

public interface ManageDao {
    //查询项目类型
    List<ProductType> getProductType();

    //查询全部项目
    List<Product> getProduct(String typeId, String statusId);

    //更新 不更新分类type
    Product updateByPidNoType(Product product);

    //更新分类
    Product updateByPid(Product product);

    //删除种类
    Product deleteType(Integer id);

    //更新种类
    Product updateType(Integer id ,String typeName);

    //新增种类
    Product addType(String typeName);

    //添加项目
    Product addProduct(Product product);

    //在issuse添加项目
    Issues addProductIntoIssuse(Product product);

}
