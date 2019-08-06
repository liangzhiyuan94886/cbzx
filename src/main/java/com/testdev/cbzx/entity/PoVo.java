package com.testdev.cbzx.entity;

import java.util.List;

/**
 * pids和日期
 *
 */

public class PoVo {
    private List<Integer> ids;
    private String startTime;
    private String endTime;
    private int pid;
    private String date;
    private List<String> dateList;

    public List<Integer> getIds() {
        return ids;
    }

    public void setIds(List<Integer> ids) {
        this.ids = ids;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public List<String> getDateList() {
        return dateList;
    }

    public void setDateList(List<String> dateList) {
        this.dateList = dateList;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "PoVo{" +
                "ids=" + ids +
                ", startTime='" + startTime + '\'' +
                ", endTime='" + endTime + '\'' +
                ", pid=" + pid +
                ", date='" + date + '\'' +
                ", dateList=" + dateList +
                '}';
    }
}
