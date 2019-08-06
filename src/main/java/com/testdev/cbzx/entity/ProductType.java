package com.testdev.cbzx.entity;

public class ProductType {
    private Integer id;
    private String productType;

    public String getProductType() {
        return productType;
    }

    public void setProductType(String productType) {
        this.productType = productType;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "ProductType{" +
                "productType='" + productType + '\'' +
                '}';
    }
}
