package com.testdev.cbzx.entity;

import com.sun.org.apache.xpath.internal.operations.Bool;

import java.util.Date;

/**
    * @文件名称：Bug.java
    * @创建时间：2019-05-23 16:08:56
    * @创  建  人：cmj
    * @文件描述：bug 实体类
    * @文件版本：V0.01 
    */ 


public class Bug{
	private Integer id;
	private Integer pid;
	private Integer project;
	private String title;
	private String type;
	private String severity;
	private String steps;
	private String status;
	private String openedBy;
	private Date openedDate;
	private String assignedTo;
	private String closedBy;
	private Date closedDate;
	private String resolution;
	private Date resolutionDate;
	private String deleted;
	private String platform;
	private Integer count;//数量



	/* 新增字段 */
	private Long difference; // 差值
	private String projectName; // 項目名稱
	private Long bugCount; // 缺陷數值

	public Long getBugCount() {
		return bugCount;
	}
	public void setBugCount(Long bugCount) {
		this.bugCount = bugCount;
	}
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public Long getDifference() {
        return difference;
    }
    public void setDifference(Long difference) {
        this.difference = difference;
    }





    private Boolean isNotHaveData;//echart中是否有数据。

	public Boolean getNotHaveData() {
		return isNotHaveData;
	}

	public void setNotHaveData(Boolean notHaveData) {
		isNotHaveData = notHaveData;
	}

	public void setId(Integer id){
	this.id=id;
	}
	public Integer getId(){
		return id;
	}
	public void setPid(Integer pid){
	this.pid=pid;
	}
	public Integer getPid(){
		return pid;
	}
	public void setProject(Integer project){
	this.project=project;
	}
	public Integer getProject(){
		return project;
	}
	public void setTitle(String title){
	this.title=title;
	}
	public String getTitle(){
		return title;
	}
	public void setType(String type){
	this.type=type;
	}
	public String getType(){
		return type;
	}
	public void setSeverity(String severity){
	this.severity=severity;
	}
	public String getSeverity(){
		return severity;
	}
	public void setSteps(String steps){
	this.steps=steps;
	}
	public String getSteps(){
		return steps;
	}
	public void setStatus(String status){
	this.status=status;
	}
	public String getStatus(){
		return status;
	}
	public void setOpenedBy(String openedBy){
	this.openedBy=openedBy;
	}
	public String getOpenedBy(){
		return openedBy;
	}
	public void setOpenedDate(Date openedDate){
	this.openedDate=openedDate;
	}
	public Date getOpenedDate(){
		return openedDate;
	}
	public void setAssignedTo(String assignedTo){
	this.assignedTo=assignedTo;
	}
	public String getAssignedTo(){
		return assignedTo;
	}
	public void setClosedBy(String closedBy){
	this.closedBy=closedBy;
	}
	public String getClosedBy(){
		return closedBy;
	}
	public void setClosedDate(Date closedDate){
	this.closedDate=closedDate;
	}
	public Date getClosedDate(){
		return closedDate;
	}
	public void setResolution(String resolution){
	this.resolution=resolution;
	}
	public String getResolution(){
		return resolution;
	}
	public void setResolutionDate(Date resolutionDate){
	this.resolutionDate=resolutionDate;
	}
	public Date getResolutionDate(){
		return resolutionDate;
	}
	public void setDeleted(String deleted){
	this.deleted=deleted;
	}
	public String getDeleted(){
		return deleted;
	}
	public void setPlatform(String platform){
	this.platform=platform;
	}
	public String getPlatform(){
		return platform;
	}

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }
}

