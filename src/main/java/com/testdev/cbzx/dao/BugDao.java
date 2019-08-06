package com.testdev.cbzx.dao;

import com.testdev.cbzx.entity.Bug;
import com.testdev.cbzx.entity.Issues;
import com.testdev.cbzx.entity.PoVo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BugDao {

    List<Bug> getBugByPage(@Param("page") Integer page, @Param("pageSize") Integer pageSize);

    List<Bug> getBugTest();

    List<Bug> getBuginfo(Bug bug);

    //查多个项目的缺陷等级分布
    List<Bug> getBugInfoBySeverity(PoVo poVo);

    //查多个项目的缺陷平均关闭时间
    Bug getBugSpendDate(PoVo poVo);

    //查项目名name
    List<Bug> getProductinfo(int parseInt);

    //查询全部bug信息（已发现。。）
    List<Bug> getBugDistribution();

    //按时间段查缺陷数量-按月
    List<Bug> getBugDistributionByMonth(PoVo poVo);

    //按时间段查缺陷数量-按周
    List<Bug> getBugDistributionByWeek(PoVo poVo);

    //按时间段查缺陷数量-按天
    List<Bug> getBugDistributionByDay(PoVo poVo);

    //查询对应项目的未关闭严重缺陷
    List<Bug> getUnresolvedSeriousBug(Integer project);

    //查询未解决缺陷复盘
    List<Bug> getUnresolvedBugReplay(PoVo poVo);

    //按分类查缺陷表格
    List<Bug> getBugDistributionByType(Integer type);

    //查询对应项目到期未关闭缺陷
    List<Bug> getDeadlineUnresolvedBug(Integer project);

    //查询手动添加的缺陷周报表格
    List<Bug> getOtherBugDistribution();

    //按分类查询手动添加的缺陷周报表格-
    List<Bug> getOtherBugDistributionByType(Integer type);

    //编辑缺陷周报
    Issues updateIssuesWeekly(Issues issues);
}
