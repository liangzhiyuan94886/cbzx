package com.testdev.cbzx.entity;

import java.util.Date;

/**
    * @文件名称：Product.java
    * @创建时间：2019-05-21 13:53:21
    * @创  建  人：cmj 
    * @文件描述：product 实体类
    * @文件版本：V0.01 
    */ 

public class Product{
	private Integer id;
	private Integer pid;
	private String name;
	private String code;
	private String createdBy;
	private Date createdDate;
	private String platform;
	private String deleted;

	//新增
	private Integer type;//所属项目类主键
	private String productType;//所属项目类名
	private String address;//管理缺陷地址
	private Integer display;//默认展示
	private String pstatus;//项目状态
	private String statusname;//状态名称

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
	public void setName(String name){
	this.name=name;
	}
	public String getName(){
		return name;
	}
	public void setCode(String code){
	this.code=code;
	}
	public String getCode(){
		return code;
	}
	public void setCreatedBy(String createdBy){
	this.createdBy=createdBy;
	}
	public String getCreatedBy(){
		return createdBy;
	}
	public void setCreatedDate(Date createdDate){
	this.createdDate=createdDate;
	}
	public Date getCreatedDate(){
		return createdDate;
	}
	public void setPlatform(String platform){
	this.platform=platform;
	}
	public String getPlatform(){
		return platform;
	}
	public void setDeleted(String deleted){
	this.deleted=deleted;
	}
	public String getDeleted(){
		return deleted;
	}

	public String getPstatus() {
		return pstatus;
	}

	public void setPstatus(String pstatus) {
		this.pstatus = pstatus;
	}

	public String getStatusname() {
		return statusname;
	}

	public void setStatusname(String statusname) {
		this.statusname = statusname;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public String getProductType() {
		return productType;
	}

	public void setProductType(String productType) {
		this.productType = productType;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Integer getDisplay() {
		return display;
	}

	public void setDisplay(Integer display) {
		this.display = display;
	}

	@Override
	public String toString() {
		return "Product{" +
				"id=" + id +
				", pid=" + pid +
				", name='" + name + '\'' +
				", code='" + code + '\'' +
				", createdBy='" + createdBy + '\'' +
				", createdDate=" + createdDate +
				", platform='" + platform + '\'' +
				", deleted='" + deleted + '\'' +
				", type=" + type +
				", productType='" + productType + '\'' +
				", address='" + address + '\'' +
				", display=" + display +
				", pstatus='" + pstatus + '\'' +
				", statusname='" + statusname + '\'' +
				'}';
	}
}

