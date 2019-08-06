package com.testdev.cbzx.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.testdev.cbzx.dao.impl.ManageDaoImpl;
import com.testdev.cbzx.entity.Product;
import com.testdev.cbzx.entity.ProductType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static java.sql.Types.NULL;

@Controller
public class ManageController {
    @Autowired
    private ManageDaoImpl manageDaoImpl;

    @RequestMapping("manage")
    public String getDemo(Model model){
        model.addAttribute("product", manageDaoImpl.getProductType());
        return "manage";
    }

    @RequestMapping(value = "/getProduct")
    @ResponseBody
    public Map<String, Object> getProductInfo(String id, Integer page, Integer limit) {
        Map<String, Object> result = new HashMap<>();
        PageHelper.startPage(page,limit);
        List<Product> productInfo = null;
        try {
            if (id == null || id == "") {
                productInfo = manageDaoImpl.getProduct();
            }else {
                productInfo = manageDaoImpl.getProductById(Integer.parseInt(id));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        PageInfo<Product> pageInfo = new PageInfo<Product>(productInfo);
        result.put("total", pageInfo.getTotal());
        result.put("data", pageInfo);
//        System.out.println(result);
        return result;
    }

    /**
     * 更新项目所属类和地址
     */
    @RequestMapping(value = "/updateTypeAndAddress")
    public String updateByPid(String type, String url, String pid,String check) {
        Product product = new Product();
        product.setAddress(url);
        product.setPid(Integer.parseInt(pid));
        if (check == "" || check == null) {
            product.setDisplay(0);
        }else {
            product.setDisplay(Integer.parseInt(check));
        }
        if (type == null || type == "") {
            manageDaoImpl.updateByPidNoType(product);
        }else {
            product.setType(Integer.parseInt(type));
            manageDaoImpl.updateByPid(product);
        }
        return "redirect:/manage";
    }

    /**
     * 查询所有项目种类
     */
    @RequestMapping(value = "/getProductType")
    @ResponseBody
    public Map<String, Object> getProductType(Integer page, Integer limit) {
        Map<String, Object> result = new HashMap<>();
        PageHelper.startPage(page,limit);
        List<ProductType> productType = manageDaoImpl.getProductType();
        PageInfo<ProductType> pageInfo = new PageInfo(productType);
        result.put("total", pageInfo.getTotal());
        result.put("data", pageInfo);
        return result;
    }

    /**
     * 删除项目种类
     */
    @RequestMapping(value = "/deleteType")
    public String deleteType(String id) {
        String result = "success";
        try {
            manageDaoImpl.deleteType(Integer.parseInt(id));
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        return "redirect:/manage";
    }

    /**
     * 修改项目种类
     */
    @RequestMapping(value = "/updateProductType")
    public String updateType(String id, String typeName) {
        try {
            manageDaoImpl.updateType(Integer.parseInt(id),typeName);
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        return "redirect:/manage";
    }

    /**
     * 添加项目种类
     */
    @RequestMapping(value = "/addProductType")
    public String addProductType(String typeName) {
        try {
            manageDaoImpl.addType(typeName);
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        return "redirect:/manage";
    }

    /**
     * 添加其他项目
     */
    @RequestMapping(value = "/addProduct")
    public String addProduct(String name,String type,String address) {
        int pid = (int)(Math.random()*1000000);
        Product product = new Product();
        product.setName(name);
        product.setAddress(address);
        product.setPid(pid);
        if (type == "" || type == null) {
            product.setType(0);
        }else {
            product.setType(Integer.parseInt(type));
        }
        try {
            manageDaoImpl.addProduct(product);
            manageDaoImpl.addProductIntoIssuse(product);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/manage";
    }


}
