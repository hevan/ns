package com.ns.base.domain;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="project")
public class Project implements Serializable{

	private static final long serialVersionUID = 6977107727908508093L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	//项目名字
	private String name;
	
	//项目名字
	private String imageUrl;
	
	//项目名字
	@ManyToOne(cascade = CascadeType.ALL,fetch=FetchType.EAGER)
	@JoinColumn(name = "project_type_id")
    private ProjectType projectType;
	
	//项目
	private String keyword;
	
	//项目点评
    private String remark;
    //项目联系人
    private String contactUserName;
    
    //联系人头像
    private String contactUserImage;
    
    //联系电话
    private String contractTel;
    
    //联系人Id
    private Long contactUserId;
    
    
  //项目支持
    private Integer starFavour = 0;
    
    //项目不支持
    private Integer starDisfavor = 0;
    
    //项目级别
    private Integer starLevel = 1;
    
    //项目状态
    private Integer status;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public ProjectType getProjectType() {
		return projectType;
	}

	public void setProjectType(ProjectType projectType) {
		this.projectType = projectType;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getContactUserName() {
		return contactUserName;
	}

	public void setContactUserName(String contactUserName) {
		this.contactUserName = contactUserName;
	}

	public String getContactUserImage() {
		return contactUserImage;
	}

	public void setContactUserImage(String contactUserImage) {
		this.contactUserImage = contactUserImage;
	}

	public String getContractTel() {
		return contractTel;
	}

	public void setContractTel(String contractTel) {
		this.contractTel = contractTel;
	}

	public Long getContactUserId() {
		return contactUserId;
	}

	public void setContactUserId(Long contactUserId) {
		this.contactUserId = contactUserId;
	}

	public Integer getStarFavour() {
		return starFavour;
	}

	public void setStarFavour(Integer starFavour) {
		this.starFavour = starFavour;
	}

	public Integer getStarDisfavor() {
		return starDisfavor;
	}

	public void setStarDisfavor(Integer starDisfavor) {
		this.starDisfavor = starDisfavor;
	}

	public Integer getStarLevel() {
		return starLevel;
	}

	public void setStarLevel(Integer starLevel) {
		this.starLevel = starLevel;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}
	
	
	
}
