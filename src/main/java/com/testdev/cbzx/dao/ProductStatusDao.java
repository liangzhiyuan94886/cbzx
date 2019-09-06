package com.testdev.cbzx.dao;

import com.testdev.cbzx.entity.ProductStatus;

import java.util.List;

public interface ProductStatusDao {
    Integer addProductStatus(String status);

    Integer updateProductStatus(Integer id, String status);

    Integer deleteProductStatus(Integer id);

    List<ProductStatus> getProductStatus();
}
