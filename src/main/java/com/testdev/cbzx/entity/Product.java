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
}

