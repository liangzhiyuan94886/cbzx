package com.testdev.cbzx.entity;

public class ProductStatus {

    private Integer id;
    private String status;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "ProductStatus{" +
                "id=" + id +
                ", status='" + status + '\'' +
                '}';
    }
}
