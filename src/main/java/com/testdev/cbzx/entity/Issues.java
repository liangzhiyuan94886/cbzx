package com.testdev.cbzx.entity;

import java.util.Date;

/*
 * @描述：手动编辑缺陷周报的实体类
 * */

public class Issues {
    private Integer id;
    private Integer uid;//项目主键
    private String projectName;//项目名
    private Integer newAdd;//本周新增
    private Integer newAddSerious;//本周新增严重
    private Integer discovered;//已发现
    private Integer resolved;//已解决
    private Integer unresolved;//未解决
    private Integer deadlineUnresolved;//到期未解决
    private Integer reopen;//重新打开
    private Integer unresolvedSerious;//未解决严重
    private Date updateDate;//更新时间

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public Integer getNewAdd() {
        return newAdd;
    }

    public void setNewAdd(Integer newAdd) {
        this.newAdd = newAdd;
    }

    public Integer getNewAddSerious() {
        return newAddSerious;
    }

    public void setNewAddSerious(Integer newAddSerious) {
        this.newAddSerious = newAddSerious;
    }

    public Integer getDiscovered() {
        return discovered;
    }

    public void setDiscovered(Integer discovered) {
        this.discovered = discovered;
    }

    public Integer getResolved() {
        return resolved;
    }

    public void setResolved(Integer resolved) {
        this.resolved = resolved;
    }

    public Integer getUnresolved() {
        return unresolved;
    }

    public void setUnresolved(Integer unresolved) {
        this.unresolved = unresolved;
    }

    public Integer getDeadlineUnresolved() {
        return deadlineUnresolved;
    }

    public void setDeadlineUnresolved(Integer deadlineUnresolved) {
        this.deadlineUnresolved = deadlineUnresolved;
    }

    public Integer getReopen() {
        return reopen;
    }

    public void setReopen(Integer reopen) {
        this.reopen = reopen;
    }

    public Integer getUnresolvedSerious() {
        return unresolvedSerious;
    }

    public void setUnresolvedSerious(Integer unresolvedSerious) {
        this.unresolvedSerious = unresolvedSerious;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    @Override
    public String toString() {
        return "Issues{" +
                "id=" + id +
                ", uid=" + uid +
                ", projectName='" + projectName + '\'' +
                ", newAdd=" + newAdd +
                ", newAddSerious=" + newAddSerious +
                ", discovered=" + discovered +
                ", resolved=" + resolved +
                ", unresolved=" + unresolved +
                ", deadlineUnresolved=" + deadlineUnresolved +
                ", reopen=" + reopen +
                ", unresolvedSerious=" + unresolvedSerious +
                ", updateDate=" + updateDate +
                '}';
    }
}
