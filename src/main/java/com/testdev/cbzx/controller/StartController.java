package com.testdev.cbzx.controller;

import com.testdev.cbzx.dao.impl.ManageDaoImpl;
import com.testdev.cbzx.dao.impl.ProductDaoImpl;
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

    @RequestMapping("cbzx")
    public String getDemo(Model model){
        model.addAttribute("product", productDaoImpl.getProduct());
        model.addAttribute("productType", manageDaoImpl.getProductType());//获取产品类
        return "cbzx";
    }

    @RequestMapping(value = "/getProductByType")
    @ResponseBody
    public List<Product> getProductByType(String id) {
        List<Product> productInfo = null;
        if (id == null || id == "") {//如果没传id 查询全部项目
            productInfo = productDaoImpl.getProduct();
        }else {//如果选择了分类 按分类查询项目
            productInfo = manageDaoImpl.getProductById(Integer.parseInt(id));
        }
        return productInfo;
    }
}
