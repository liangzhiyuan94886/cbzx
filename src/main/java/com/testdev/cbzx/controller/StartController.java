package com.testdev.cbzx.controller;

import com.testdev.cbzx.dao.impl.ManageDaoImpl;
import com.testdev.cbzx.dao.impl.ProductDaoImpl;
import com.testdev.cbzx.dao.impl.ProductStatusDaoImpl;
import com.testdev.cbzx.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
public class StartController {
    @Autowired
    private ProductDaoImpl productDaoImpl;
    @Autowired
    private ManageDaoImpl manageDaoImpl;

    @Autowired
    private ProductStatusDaoImpl productStatusDaoImpl;

    @RequestMapping("nav")
    public String nav(){
        return "nav";
    }

    @RequestMapping("cbzx")
    public String getDemo(Model model){
        model.addAttribute("product", productDaoImpl.getProduct());
        model.addAttribute("productType", manageDaoImpl.getProductType());//获取产品类
        model.addAttribute("productStatus", productStatusDaoImpl.getProductStatus());
        return "cbzx";
    }

    @RequestMapping(value = "/getProductByType")
    @ResponseBody
    public List<Product> getProductByType(String typeId, String statusId) {
        if (typeId == "") {typeId = null;}
        if (statusId == "") {statusId = null;}

        List<Product> productInfo = manageDaoImpl.getProduct(typeId, statusId);
        return productInfo;
    }
}
