package com.testdev.cbzx.dao.impl;

import com.testdev.cbzx.dao.ProductStatusDao;
import com.testdev.cbzx.entity.ProductStatus;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service(value="ProductStatusDaoImpl")
public class ProductStatusDaoImpl implements ProductStatusDao {

    @Resource
    private ProductStatusDao productStatusDao;

    @Override
    public Integer addProductStatus(String status) {
        return productStatusDao.addProductStatus(status);
    }

    @Override
    public Integer updateProductStatus(Integer id, String status) {
        return productStatusDao.updateProductStatus(id, status);
    }

    @Override
    public Integer deleteProductStatus(Integer id) {
        return productStatusDao.deleteProductStatus(id);
    }

    @Override
    public List<ProductStatus> getProductStatus() {
        return productStatusDao.getProductStatus();
    }
}
