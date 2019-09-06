package com.testdev.cbzx.entity;

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
	private String pid;
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
	private Boolean isNotHaveData;//判断echart中是否有数据。
	private Long difference; // 缺陷关闭所需时间
	private String projectName; // 項目名稱
	private Long bugCount; // 缺陷数量（时间/数量,需要long型）
	private Double average;//平均关闭时间
	private Integer newAdd;//本周新增缺陷数量
	private  Integer newAddSerious;//本周新增严重缺陷数量
	private Integer discovered;//已发现缺陷数量
	private  Integer resolved;//已解决缺陷数量
	private  Integer unresolved;//未解决缺陷数量
	private  Integer unresolvedSerious;//未解决严重缺陷数量
	private String month;//月份
	private  String week;//周
	private  String day;//天
	private  Integer reopen;//重新打开
	private Date deadline;//截至日期
	private Integer deadlineUnresolved;//到期未解决数量
	private Date updateDate;


	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getWeek() {
		return week;
	}

	public void setWeek(String week) {
		this.week = week;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public Long getBugCount() {
		return bugCount;
	}

	public Double getAverage() {
		return average;
	}

	public void setAverage(Double average) {
		this.average = average;
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

	public Integer getUnresolvedSerious() {
		return unresolvedSerious;
	}

	public void setUnresolvedSerious(Integer unresolvedSerious) {
		this.unresolvedSerious = unresolvedSerious;
	}

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
	public void setPid(String pid){
	this.pid=pid;
	}
	public String getPid(){
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

	public Integer getReopen() {
		return reopen;
	}

	public void setReopen(Integer reopen) {
		this.reopen = reopen;
	}

	public Date getDeadline() {
		return deadline;
	}

	public void setDeadline(Date deadline) {
		this.deadline = deadline;
	}

	public Integer getDeadlineUnresolved() {
		return deadlineUnresolved;
	}

	public void setDeadlineUnresolved(Integer deadlineUnresolved) {
		this.deadlineUnresolved = deadlineUnresolved;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	@Override
	public String toString() {
		return "Bug{" +
				"id=" + id +
				", pid='" + pid + '\'' +
				", project=" + project +
				", title='" + title + '\'' +
				", type='" + type + '\'' +
				", severity='" + severity + '\'' +
				", steps='" + steps + '\'' +
				", status='" + status + '\'' +
				", openedBy='" + openedBy + '\'' +
				", openedDate=" + openedDate +
				", assignedTo='" + assignedTo + '\'' +
				", closedBy='" + closedBy + '\'' +
				", closedDate=" + closedDate +
				", resolution='" + resolution + '\'' +
				", resolutionDate=" + resolutionDate +
				", deleted='" + deleted + '\'' +
				", platform='" + platform + '\'' +
				", count=" + count +
				", isNotHaveData=" + isNotHaveData +
				", difference=" + difference +
				", projectName='" + projectName + '\'' +
				", bugCount=" + bugCount +
				", average=" + average +
				", newAdd=" + newAdd +
				", newAddSerious=" + newAddSerious +
				", discovered=" + discovered +
				", resolved=" + resolved +
				", unresolved=" + unresolved +
				", unresolvedSerious=" + unresolvedSerious +
				", month='" + month + '\'' +
				", week='" + week + '\'' +
				", day='" + day + '\'' +
				", reopen=" + reopen +
				", deadline=" + deadline +
				", deadlineUnresolved=" + deadlineUnresolved +
				", updateDate=" + updateDate +
				'}';
	}

}

