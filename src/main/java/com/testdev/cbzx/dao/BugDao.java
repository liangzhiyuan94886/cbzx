package com.testdev.cbzx.dao;

import com.testdev.cbzx.entity.Bug;
import com.testdev.cbzx.entity.Product;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BugDao {

    List<Bug> getBugByPage(@Param("page") Integer page, @Param("pageSize") Integer pageSize);

    List<Bug> getBugTest();

    List<Bug> getBuginfo(Bug bug);

    //查多个项目的缺陷数量
    List<Bug> getBuginfo(Integer pid);

    //查多个项目的缺陷平均关闭时间
    Bug getBugSpendDate(Integer pid);

    //查项目名name
    List<Bug> getProductinfo(int parseInt);
}
