package com.testdev.cbzx.dao.impl;

import com.testdev.cbzx.dao.ProductDao;
import com.testdev.cbzx.entity.Product;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service(value = "productDaoImpl")
public class ProductDaoImpl implements ProductDao{

    @Resource
    private ProductDao productDao;

    @Override
    public List<Product> getProduct() {
        return productDao.getProduct();
    }

    /*
     * 根据项目主键查询缺陷地址
     * */
    @Override
    public Product getBugAddressByProject(Integer project) {
        return productDao.getBugAddressByProject(project);
    }

    @Override
    public List<Integer> getDefaultDisplay() {
        return productDao.getDefaultDisplay();
    }


}
