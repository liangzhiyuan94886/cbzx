package com.testdev.cbzx.entity;

   /**
    * @文件名称：ZtLang.java
    * @创建时间：2019-05-21 14:23:12
    * @创  建  人：cmj 
    * @文件描述：zt_lang 实体类
    * @文件版本：V0.01 
    */ 

public class ZtLang{
	private Integer id;
	private Integer pid;
	private String platform;
	private String module;
	private String section;
	private String lkey;
	private String value;
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
	public void setPlatform(String platform){
	this.platform=platform;
	}
	public String getPlatform(){
		return platform;
	}
	public void setModule(String module){
	this.module=module;
	}
	public String getModule(){
		return module;
	}
	public void setSection(String section){
	this.section=section;
	}
	public String getSection(){
		return section;
	}
	public void setLkey(String lkey){
	this.lkey=lkey;
	}
	public String getLkey(){
		return lkey;
	}
	public void setValue(String value){
	this.value=value;
	}
	public String getValue(){
		return value;
	}
}

