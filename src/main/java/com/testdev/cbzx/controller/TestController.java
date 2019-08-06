package com.testdev.cbzx.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.testdev.cbzx.dao.impl.BugDaoImpl;
import com.testdev.cbzx.dao.impl.ProductDaoImpl;
import com.testdev.cbzx.entity.Bug;
import com.testdev.cbzx.entity.Issues;
import com.testdev.cbzx.entity.PoVo;
import com.testdev.cbzx.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


import java.text.SimpleDateFormat;
import java.util.*;

@Controller
public class TestController {

    @Autowired
    private BugDaoImpl bugDaoImpl;

    @Autowired
    private ProductDaoImpl productDaoImpl;

    @RequestMapping("getbug")
    public List<Bug> getBug() {
        return bugDaoImpl.getBugByPage(0, 10);
    }

    @RequestMapping("getbugtest")
    public List<Bug> getBugTest() {
        return bugDaoImpl.getBugTest();

    }

    /**
     * 查询缺陷关闭时间
     * @param pids
     * @param startTime
     * @param endTime
     * @return projectAvgList
     */
    @RequestMapping(value = "/getBugSpendDate")
    @ResponseBody
    public List<Map<String, Object>> getBugSpendDate(@RequestParam(value = "pids") String pids, String startTime, String endTime) {
        JSONArray idsArray = JSON.parseArray(pids);
        List<Bug> SpendDateList = new ArrayList<>();
        List<Map<String, Object>> projectAvgList = new ArrayList<>();
        PoVo poVo = new PoVo();
        poVo.setStartTime(startTime);
        poVo.setEndTime(endTime);
/*        List<Double> urgentData = new ArrayList<>();
        List<Double> seriousData = new ArrayList<>();
        List<Double> ordinaryData = new ArrayList<>();
        List<Double> slightData = new ArrayList<>();
        Map<String, Object> mapSeries = new HashMap<>();*/
        for (Object pid : idsArray) {
            pid = pid.toString();
            poVo.setPid(Integer.parseInt(pid.toString()));//对应的pid
            Bug spendDateInfo = bugDaoImpl.getBugSpendDate(poVo);
            SpendDateList.add(spendDateInfo);//返回结果

/*                for (Bug bug : spendDateInfo) {
                    if (bug.getSeverity() =="1") {
                        urgentData.add(bug.getAverage());
                    }else if (bug.getSeverity() == "2") {
                        seriousData.add(bug.getAverage());
                    }else if (bug.getSeverity() == "3") {
                        ordinaryData.add(bug.getAverage());
                    }else if (bug.getSeverity() == "4"){
                        slightData.add(bug.getAverage());
                    }
                }*/
        }
/*        mapSeries.put("data", urgentData);
        mapSeries.put("data", seriousData);
        mapSeries.put("data", ordinaryData);
        mapSeries.put("data", slightData);
        System.out.println(mapSeries);*/
        for (Bug bug : SpendDateList) {
            Map<String, Object> projectAvg = new HashMap<>();
            projectAvg.put("projectName", bug.getProjectName());//项目名
            Long avg = null;
            if (bug.getBugCount()==null){
                 avg = Long.valueOf(0);//如果没有缺陷数量，对应平均时间返回0
            }else {
                avg = (bug.getDifference() / bug.getBugCount())  / 1000 / 60 / 60;//单位是h
            }
            projectAvg.put("average", avg);
            projectAvgList.add(projectAvg);
        }
        return projectAvgList;
    }

    /**
     * 查询各项目的缺陷按等级
     * @param pids
     * @param startTime
     * @param endTime
     * @return result
     */
    @RequestMapping(value = "/getBug", method = RequestMethod.POST)
    @ResponseBody
    public List<List<Bug>> getBugInfoByPid(@RequestParam(value = "pids") String pids, String startTime, String endTime) {
        JSONArray idsArray = JSON.parseArray(pids);
        List<List<Bug>> result = new ArrayList<>();
        PoVo poVo = new PoVo();//封装查询参数
        poVo.setStartTime(startTime);
        poVo.setEndTime(endTime);
        for (Object pid : idsArray) {//遍历pid数组
            pid = pid.toString();
            poVo.setPid(Integer.parseInt(pid.toString()));
            List<Bug> bugInfo = bugDaoImpl.getBugInfoBySeverity(poVo);//返回单个pid结果
            result.add(bugInfo);
        }
        return result;
    }

    /**
     * 查询缺陷周报表格-全部
     * @param page
     * @param limit
     * @return result
     */
    /*@RequestMapping(value = "/getBugDistribution")
    @ResponseBody
    public Map<String, Object> getBugDistribution(Integer page,Integer limit) {
        Map<String, Object> result = new HashMap<>();
        PageHelper.startPage(page,limit);
        List<Bug> allBugInfo = null;
        try {
            allBugInfo = bugDaoImpl.getBugDistribution();
//            List<Bug> addinfo = bugDaoImpl.getBugDistributionByType(1);
            PageInfo<Bug> pageInfo = new PageInfo<Bug>(allBugInfo);
//            PageInfo<Bug> pageInfo1 = new PageInfo<>(addinfo);
            result.put("total", pageInfo.getTotal());
            result.put("data", pageInfo);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }*/

    /**
     * 按时间段查各项目产生的缺陷数量（去曲线图）
     * @param pids
     * @param startTime
     * @param endTime
     * @return result
     */
    @RequestMapping(value = "/getBugDistributionByMonth"/*, method = RequestMethod.GET*/)
    @ResponseBody
    public  Map<String, Object> getBugDistributionByMonth(@RequestParam(value = "pids") String pids,String startTime, String endTime){
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat format2 = new SimpleDateFormat("yyyy-MM-dd");
        JSONArray idsArray = JSON.parseArray(pids);
        Map<String, Object> result = new LinkedHashMap<>();//返回结果集
        List<Map<String, Object>> series = new ArrayList<>();//series结果集
        List<String> legend = new ArrayList<>();//legend结果集
        List<String> xAxis = new ArrayList<>();//* 获取echarts横坐标 *//(月份)结果集
        Set<String> set = new HashSet<String>();//去除重复信息
        PoVo poVo= new PoVo();//把pid，startTime和endTime封装到poVo查询
        poVo.setStartTime(startTime);
        poVo.setEndTime(endTime);
        try {
            Date date1 = format.parse(startTime);
            Date date2 = format2.parse(endTime);
            long date1Long = date1.getTime();
            long date2Long = date2.getTime();
            long cha = date2Long - date1Long;
            int day = (int) (cha/1000/60/60/24)+1;//判断两个时间段有多少天
            String Seriesname ="";
            for (Object pid : idsArray) {
                pid = pid.toString();
                poVo.setPid(Integer.parseInt(pid.toString()));//对应pid
                Map<String,Object> mapSeries = new HashMap<>();//每个pid对应的信息封装到Map
                Map<String,Object> unresolvedMapSeries = new HashMap<>();//未解决的每个pid对应的map
                List<Integer> listSeriesData = new ArrayList<>();//各个月总的缺陷数量
                List<Integer> unresolvedListSeriesData = new ArrayList<>();
                mapSeries.put("type", "line");
                mapSeries.put("stack", "总量");
                mapSeries.put("areaStyle", "");
                mapSeries.put("smooth", "true");
                mapSeries.put("data", listSeriesData);//封装echart series数据
                unresolvedMapSeries.put("type", "line");
                unresolvedMapSeries.put("stack", "总量");
                unresolvedMapSeries.put("areaStyle", "");
                unresolvedMapSeries.put("smooth", "true");
                unresolvedMapSeries.put("data", unresolvedListSeriesData);//封装echart series数据（未解决）
                if (day > 28) {//大于一个月的情况
                    List<Bug> bugInfo = bugDaoImpl.getBugDistributionByMonth(poVo);
                    for (Bug bug : bugInfo) {
                        if (set.add(bug.getMonth())) {//取出不重复的月份（X轴标）
                            xAxis.add(bug.getMonth());
                        }
                        Seriesname = bug.getProjectName();//项目名
                        listSeriesData.add(bug.getCount());//各月缺陷数量
                        unresolvedListSeriesData.add(bug.getUnresolved());
                    }
                }else if (day <= 28){//小与一个月的情况
                    List<Bug> bugInfo = bugDaoImpl.getBugDistributionByDay(poVo);
                    for (Bug bug : bugInfo) {
                        if (set.add(bug.getDay())) {//取出不重复的日期（天）
                            xAxis.add(bug.getDay());
                        }
                        Seriesname = bug.getProjectName();
                        listSeriesData.add(bug.getCount());
                        unresolvedListSeriesData.add(bug.getUnresolved());
                    }
                }
                mapSeries.put("name",Seriesname);//series中的name
                unresolvedMapSeries.put("name",Seriesname+"-未关闭");//series中的name
                legend.add(Seriesname);//echart的legend
                legend.add(Seriesname+"-未关闭");//echart的legend
                series.add(mapSeries);
                series.add(unresolvedMapSeries);
            }
            result.put("legend", legend);
            result.put("xAxis", xAxis);
            result.put("series", series);
//            System.out.println("series--"+series);
        } catch (Exception e) {
            e.printStackTrace();
        }
//        System.out.println("result--"+result);
        return result;
    }

    /**
     * 查询对应项目的未关闭严重缺陷
     * @param project
     * @param page
     * @param limit
     * @return result
     */
    @RequestMapping(value = "/getUnresolvedSeriousBug")
    @ResponseBody
    public Map<String, Object> getUnresolvedSeriousBug(String project, Integer page, Integer limit) {
        Map<String, Object> result = new HashMap<>();
        PageHelper.startPage(page,limit);
        try {
            List<Bug> seriousBugList = bugDaoImpl.getUnresolvedSeriousBug(Integer.parseInt(project));
            PageInfo<Bug> pageInfo = new PageInfo<Bug>(seriousBugList);
            result.put("total", pageInfo.getTotal());
            result.put("data", pageInfo);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    /**
     * 根据项目主键查询缺陷地址
     * @param project
     * @return url
     */
    @RequestMapping(value = "/getBugAddress")
    @ResponseBody
    public Product getBugAddressByPid(String project) {
        Product url = productDaoImpl.getBugAddressByProject(Integer.parseInt(project));
        return url;
    }

    /**
     * 按时间段查各项目未解决缺陷复盘
     * @param pids
     * @param startTime
     * @param endTime
     * @return result
     */
    @RequestMapping(value = "/getBugReplay", method = RequestMethod.POST)
    @ResponseBody
    public  Map<String, Object> getBugReplay(@RequestParam(value = "pids") String pids,String startTime, String endTime){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        List<String> dateList = new ArrayList<String>();//取出每一天
        try{
            Date dateOne = sdf.parse(startTime);
            Date dateTwo = sdf.parse(endTime);
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(dateOne);
            dateList.add(startTime);
            while(calendar.getTime().before(dateTwo)){ //倒序时间,顺序after改before其他相应的改动。
                calendar.add(Calendar.DAY_OF_MONTH, 1);
                dateList.add(sdf.format(calendar.getTime()));
            }
        } catch(Exception e){
            e.printStackTrace();
        }
        PoVo poVo = new PoVo();//参数封装
        poVo.setStartTime(startTime);
        poVo.setEndTime(endTime);
//        poVo.setDateList(dateList);
        Map<String, Object> result = new LinkedHashMap<>();//返回结果
        List<Map<String, Object>> series = new ArrayList<>();//series结果集
        List<String> legend = new ArrayList<>();//legend结果集
        JSONArray idArray = JSON.parseArray(pids);
        String Seriesname = "";
        for (Object pid : idArray) {//遍历pid
            pid = pid.toString();
            poVo.setPid(Integer.parseInt(pid.toString()));
            Map<String,Object> mapSeries = new HashMap<>();//每个pid对应的信息封装到Map
            List<Integer> listUnresolvedData = new ArrayList<>();
            mapSeries.put("type", "line");
            //mapSeries.put("stack", "总量");
            mapSeries.put("smooth", "true");
            mapSeries.put("data", listUnresolvedData);//封装echart series数据
            for (String date : dateList) {
                date = date.toString();
                poVo.setDate(date);
                List<Bug> unresolved = bugDaoImpl.getUnresolvedBugReplay(poVo);
                for (Bug bug : unresolved) {
                    listUnresolvedData.add(bug.getCount());
                    Seriesname = bug.getProjectName();
                }
            }
            mapSeries.put("name",Seriesname);//series中的name
            legend.add(Seriesname);
            series.add(mapSeries);
        }
        result.put("series", series);
        result.put("xAxis",dateList);
        result.put("legend",legend);
        return result;
    }

    /**
     * 查询缺陷周报表格
     * @param type
     * @param  page
     * @param limit
     * @return result
     */
    @RequestMapping(value = "/getBugDistribution")
    @ResponseBody
    public Map<String, Object> getBugDistribution(String type,Integer page,Integer limit) {
        Map<String, Object> result = new HashMap<>();
        PageHelper.startPage(page,limit);
        List<Bug> allBugInfo = null;
        List<Bug> otherBugInfo = null;
        try {
            if (type == "" || type == null) {
                allBugInfo = bugDaoImpl.getBugDistribution();
                otherBugInfo = bugDaoImpl.getOtherBugDistribution();
            }else {
                allBugInfo = bugDaoImpl.getBugDistributionByType(Integer.parseInt(type));
                otherBugInfo = bugDaoImpl.getOtherBugDistributionByType(Integer.parseInt(type));
            }
            allBugInfo.addAll(otherBugInfo);
            PageInfo<Bug> pageInfo = new PageInfo<Bug>(allBugInfo);
            PageInfo<Bug> pageInfo1 = new PageInfo<>(otherBugInfo);
            result.put("total", pageInfo.getTotal()+pageInfo1.getTotal());
            result.put("data", pageInfo);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    /**
     * 查询默认展示的项目
     * @return defaultDisplay
     */
    @RequestMapping(value = "/getDefaultDisplay")
    @ResponseBody
    public List<Integer> getDefaultDisplay() {
        List<Integer> defaultDisplay = productDaoImpl.getDefaultDisplay();
        return defaultDisplay;
    }

    /**
     * 查询对应项目的到期为解决缺陷
     *
     * @param project
     * @param page
     * @param limit
     * @return deadline
     */
    @RequestMapping(value = "/getDeadlineUnresolvedBug")
    @ResponseBody
    public Map<String, Object> getDeadlineUnresolvedBug(String project, Integer page, Integer limit) {
        Map<String, Object> deadline = new HashMap<>();
        PageHelper.startPage(page,limit);
        try {
            List<Bug> deadlineUnresolved = bugDaoImpl.getDeadlineUnresolvedBug(Integer.parseInt(project));
            PageInfo<Bug> pageInfo = new PageInfo<>(deadlineUnresolved);
            deadline.put("total",pageInfo.getTotal());
            deadline.put("data",pageInfo);
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        return deadline;
    }

    /**
     * 更新缺陷周报
     * @param weekId
     * @param newAdd
     * @param newAddSerious
     * @param discovered
     * @param reopen
     * @param resolved
     * @param unresolved
     * @param deadlineUnresolved
     * @param unresolvedSerious
     * @return
     */
    @RequestMapping(value = "/updateIssuesWeekly")
    public String updateIssuesWeekly(String weekId,String newAdd,String newAddSerious,String discovered,String reopen,String resolved,String unresolved,String deadlineUnresolved,String unresolvedSerious) {
        Issues issues = new Issues();
        issues.setId(Integer.parseInt(weekId));
        issues.setNewAdd(Integer.parseInt(newAdd));
        issues.setNewAddSerious(Integer.parseInt(newAddSerious));
        issues.setDiscovered(Integer.parseInt(discovered));
        issues.setReopen(Integer.parseInt(reopen));
        issues.setResolved(Integer.parseInt(resolved));
        issues.setUnresolved(Integer.parseInt(unresolved));
        issues.setDeadlineUnresolved(Integer.parseInt(deadlineUnresolved));
        issues.setUnresolvedSerious(Integer.parseInt(unresolvedSerious));
        try {
            bugDaoImpl.updateIssuesWeekly(issues);
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        return "redirect:/cbzx";
    }


}
