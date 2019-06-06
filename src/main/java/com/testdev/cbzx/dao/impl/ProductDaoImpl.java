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
}
