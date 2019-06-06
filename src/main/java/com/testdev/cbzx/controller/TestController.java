package com.testdev.cbzx.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.testdev.cbzx.dao.impl.BugDaoImpl;
import com.testdev.cbzx.entity.Bug;
import com.testdev.cbzx.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;

@RestController
public class TestController {

    @Autowired
    private BugDaoImpl bugDaoImpl;

    @RequestMapping("getbug")
    public List<Bug> getBug() {
        return bugDaoImpl.getBugByPage(0, 10);
    }

    @RequestMapping("getbugtest")
    public List<Bug> getBugTest() {
        return bugDaoImpl.getBugTest();

    }

    //查询单个项目——————
    /*@RequestMapping(value = "/getBug")
    @ResponseBody
    public Map<String,Object> myChart1_getNumber(HttpServletRequest request, HttpServletResponse response,Integer pid) {
        Map<String,Object> m = new HashMap();
        List<Integer> Xline1 = new ArrayList<>();
        List<Integer> Xline2 = new ArrayList<>();
        List<Integer> Xline3 = new ArrayList<>();
        List<Integer> Xline4 = new ArrayList<>();
        List<String> Yline= new ArrayList<>();
        Bug bug = new Bug();
        bug.setProject(pid);
        List<Bug> buginfo = null;
        try {
            buginfo = bugDaoImpl.getBuginfo(bug);
            Yline.add(buginfo.get(0).getTitle());
            for (int i=0;i<buginfo.size();i++){
                switch (buginfo.get(i).getSeverity()){
                    case "1":Xline1.add(buginfo.get(i).getCount());break;
                    case "2":Xline2.add(buginfo.get(i).getCount());break;
                    case "3":Xline3.add(buginfo.get(i).getCount());break;
                    case "4":Xline4.add(buginfo.get(i).getCount());break;
                }
            }
            m.put("success",true);
            m.put("Xlin1",Xline1);
            m.put("Xlin2",Xline2);
            m.put("Xlin3",Xline3);
            m.put("Xlin4",Xline4);
            m.put("Ylin",Yline);
        } catch (Exception e) {
            m.put("success",false);
            m.put("mesg","网络异常！");
            e.printStackTrace();
        }
        return m;
    }*/

    /**
     * 查询缺陷关闭时间
     *
     * @return
     */
    @RequestMapping(value = "/getBugSpendDate")
    public @ResponseBody List<Map<String, Object>> getBugSpendDate(@RequestParam(value = "pids") String pids) {
        System.out.println(pids);
        JSONArray idsArray = JSON.parseArray(pids);
        List<Bug> SpendDateList = new ArrayList<>();
        for (Object pid : idsArray) {
            pid = pid.toString();//处理带逗号的数字
            String pid2 = "";
            for (int i = 0; i < ((String) pid).length(); i++) {
                if (!((String) pid).substring(i, i + 1).equals(",")) {
                    pid2 += ((String) pid).substring(i, i + 1);
                }
            }
            Bug spendDateInfo = bugDaoImpl.getBugSpendDate(Integer.parseInt(pid2.toString()));
            SpendDateList.add(spendDateInfo);
//            if(!(spendDateInfo.size() >0)){//判断。buginfo。size=0 即没有bug信息
//                List<Bug> buginfo2 = bugDaoImpl.getProductinfo(Integer.parseInt(pid2.toString()));//再去查pid2  项目名字
//                buginfo2.get(0).setNotHaveData(false);
//                SpendDateList.add(buginfo2);
//            }else{
//                SpendDateList.add(spendDateInfo);
//            }
//        }
//        System.out.println(SpendDateList);
//        return SpendDateList;
        }

        List<Map<String, Object>> projectAvgList = new ArrayList<>();

        for (Bug bug : SpendDateList) {
            Map<String, Object> projectAvg = new HashMap<>();
            projectAvg.put("projectName", bug.getProjectName());
            Long avg = (bug.getDifference() / bug.getBugCount())  / 1000 / 60 / 60;
            projectAvg.put("average", avg);
            projectAvgList.add(projectAvg);
        }

        System.out.println(projectAvgList);

        return projectAvgList;
    }

    /**
     * 查询各项目的缺陷
     *
     * @param
     * @param
     * @return
     */
    @RequestMapping(value = "/getBug", method = RequestMethod.POST)
    public @ResponseBody
    List<List<Bug>> getBugInfoByPid(@RequestParam(value = "pids") String pids) {
        System.out.println(pids);
        JSONArray idsArray = JSON.parseArray(pids);
        List<List<Bug>> buginfoList = new ArrayList<>();
        for (Object pid : idsArray) {
//            System.out.println(Integer.parseInt(pid.toString()));
            pid = pid.toString();//处理带逗号的数字
            String pid2 = "";
            for (int i = 0; i < ((String) pid).length(); i++) {
                if (!((String) pid).substring(i, i + 1).equals(",")) {
                    pid2 += ((String) pid).substring(i, i + 1);
                }
            }
            List<Bug> buginfo = bugDaoImpl.getBuginfo(Integer.parseInt(pid2.toString()));
            if (!(buginfo.size() > 0)) {//判断。buginfo。size=0 即没有bug信息
                List<Bug> buginfo2 = bugDaoImpl.getProductinfo(Integer.parseInt(pid2.toString()));//再去查pid2  项目名字
                buginfo2.get(0).setNotHaveData(false);
                buginfoList.add(buginfo2);
            } else {
                buginfoList.add(buginfo);
            }
        }
        System.out.println(buginfoList);
        return buginfoList;
    }

}
