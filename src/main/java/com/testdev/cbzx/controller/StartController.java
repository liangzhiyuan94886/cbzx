package com.testdev.cbzx.controller;

import com.testdev.cbzx.dao.impl.ProductDaoImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StartController {
    @Autowired
    private ProductDaoImpl productDaoImpl;

    @RequestMapping("demo")
    public String getDemo(Model model){
        model.addAttribute("product", productDaoImpl.getProduct());
        return "demo";
    }
}
