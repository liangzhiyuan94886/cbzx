package com.testdev.cbzx.dao.impl;

import com.testdev.cbzx.dao.ManageDao;
import com.testdev.cbzx.entity.Issues;
import com.testdev.cbzx.entity.Product;
import com.testdev.cbzx.entity.ProductType;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service(value = "manageDaoImpl")
public class ManageDaoImpl implements ManageDao {
    @Resource
    private ManageDao manageDao;

    @Override
    public List<ProductType> getProductType() {
        return manageDao.getProductType();
    }

    @Override
    public List<Product> getProduct() {
        return manageDao.getProduct();
    }

    @Override
    public  List<Product> getProductById(Integer id) {return  manageDao.getProductById(id);}

    //更新 不更新分类type
    @Override
    public Product updateByPidNoType(Product product) {
        return manageDao.updateByPidNoType(product);
    }

    @Override
    public Product updateByPid(Product product) {
        return manageDao.updateByPid(product);
    }

    //删除
    @Override
    public Product deleteType(Integer id) {
        return manageDao.deleteType(id);
    }

    //更新种类
    @Override
    public Product updateType(Integer id, String typeName) {
        return manageDao.updateType(id,typeName);
    }

    //添加种类
    @Override
    public Product addType(String typeName) {
        return manageDao.addType(typeName);
    }

    //添加项目
    @Override
    public Product addProduct(Product product) {
        return manageDao.addProduct(product);
    }

    //在issuse添加项目
    @Override
    public Issues addProductIntoIssuse(Product product) {
        return manageDao.addProductIntoIssuse(product);
    }


}
