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
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="corp")
public class Corp implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	//公司名字
	private String name;
	
	//公司类型ID
	@ManyToOne(cascade = CascadeType.ALL,fetch=FetchType.EAGER)
	@JoinColumn(name = "corp_type_id")
	private CorpType corpType;
	
	//公司简称
	private String summary;
	
	//公司图片或Logo
    private String imageUrl;
    
    private String address;
    
    private String contactUserName;
    
    //联系人头像
    private String contactUserImage;
    
    //联系电话
    private String contractTel;
    
    //联系人Id
    private Long contactUserId;
    
    @OneToOne(cascade = CascadeType.ALL,fetch=FetchType.LAZY,mappedBy="corp")
    private CorpInfo corpInfo;

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

	

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
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

	public CorpType getCorpType() {
		return corpType;
	}

	public void setCorpType(CorpType corpType) {
		this.corpType = corpType;
	}

	public String getContactUserName() {
		return contactUserName;
	}

	public void setContactUserName(String contactUserName) {
		this.contactUserName = contactUserName;
	}

	public CorpInfo getCorpInfo() {
		return corpInfo;
	}

	public void setCorpInfo(CorpInfo corpInfo) {
		this.corpInfo = corpInfo;
	}
   
}
