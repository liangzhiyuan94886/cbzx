package com.testdev.cbzx.dao.impl;

import com.testdev.cbzx.dao.BugDao;
import com.testdev.cbzx.entity.Bug;
import com.testdev.cbzx.entity.Issues;
import com.testdev.cbzx.entity.PoVo;
import com.testdev.cbzx.entity.Product;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
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
     * 按照项目的id来查询bug,并使用缺陷的等级来分组
     * @param poVo
     * @return
     */
    @Override
    public List<Bug> getBugInfoBySeverity(PoVo poVo) {
        return bugDao.getBugInfoBySeverity(poVo);
    }

    /**
     * 按照项目的id来查询bug平均关闭时间
     * @param poVo
     * @return
     */
    @Override
    public Bug getBugSpendDate(PoVo poVo) {
        return bugDao.getBugSpendDate(poVo);
    }

    /**
     *查到没有缺陷信息的时候再去product项目名name
     */
    @Override
    public List<Bug> getProductinfo(int parseInt){
        List<Bug> list = bugDao.getProductinfo(parseInt);
        return  list;
    };

    /**
     * 查询全部项目缺陷分布（已发现、已解决）
     * @return
     */
    @Override
    public List<Bug> getBugDistribution(){ return bugDao.getBugDistribution(); }

    /**
     * 按时间段、pid查各项目产生的缺陷数量（曲线图）
     * @param poVo
     * @return
     */
    @Override
    public List<Bug> getBugDistributionByMonth(PoVo poVo) { return bugDao.getBugDistributionByMonth(poVo); }
    public List<Bug> getBugDistributionByWeek(PoVo poVo) {
        return bugDao.getBugDistributionByWeek(poVo);
    }
    public List<Bug> getBugDistributionByDay(PoVo poVo) { return bugDao.getBugDistributionByDay(poVo); }

    /**
     * 查询对应项目的未关闭严重缺陷
     * @param project
     * @return
     */
    @Override
    public  List<Bug> getUnresolvedSeriousBug(Integer project) {return  bugDao.getUnresolvedSeriousBug(project);}

    /**
     * 查询未解决缺陷复盘
     * @param poVo
     * @return
     */
    @Override
    public List<Bug> getUnresolvedBugReplay(PoVo poVo) {
        return bugDao.getUnresolvedBugReplay(poVo);
    }

    /**
     * 按分类查缺陷表格
     * @param type
     * @return
     */
    @Override
    public List<Bug> getBugDistributionByType(Integer type) {
        return bugDao.getBugDistributionByType(type);
    }

    /**
     * 查询对应项目到期未关闭缺陷
     * @param project
     * @return
     */
    @Override
    public List<Bug> getDeadlineUnresolvedBug(Integer project) {
        return bugDao.getDeadlineUnresolvedBug(project);
    }

    /**
     * 查询手动添加的缺陷周报表格
     * @return
     */
    @Override
    public List<Bug> getOtherBugDistribution() {
        return bugDao.getOtherBugDistribution();
    }


    /**
     * 按分类查询手动添加的缺陷周报表格
     * @param type
     * @return
     */
    @Override
    public List<Bug> getOtherBugDistributionByType(Integer type) {
        return bugDao.getOtherBugDistributionByType(type);
    }

    /**
     * 编辑缺陷周报
     * @param issues
     * @return
     */
    @Override
    public Issues updateIssuesWeekly(Issues issues) {
        return bugDao.updateIssuesWeekly(issues);
    }


}
