package com.testdev.cbzx.dao.impl;

import com.testdev.cbzx.dao.BugDao;
import com.testdev.cbzx.entity.Bug;
import com.testdev.cbzx.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service(value = "bugDaoImpl")
public class BugDaoImpl implements BugDao {
    @Resource
    private BugDao bugDao;

    @Override
    public List<Bug> getBugByPage(Integer page, Integer pageSize) {
        return bugDao.getBugByPage(page,pageSize);
    }

    @Override
    public List<Bug> getBugTest() {
        return bugDao.getBugTest();
    }

    //@Autowired
    /**
     *
     * @param bug
     * @return
     */
    @Override
    public List<Bug> getBuginfo(Bug bug) {
        return bugDao.getBuginfo(bug);
    }

    /**
     *按照项目的id来查询bug,并使用缺陷的等级来分组
     */
    @Override
    public List<Bug> getBuginfo(Integer pid) {
        return bugDao.getBuginfo(pid);
    }

    /**
     *按照项目的id来查询bug平均关闭时间
     */
    @Override
    public Bug getBugSpendDate(Integer pid) {
        return bugDao.getBugSpendDate(pid);
    }

    /**
     *查到没有缺陷信息的时候再去product项目名name
     */
    @Override
    public List<Bug> getProductinfo(int parseInt){
        return bugDao.getProductinfo(parseInt);
    };

}
