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
@Table(name="project_discuss")
public class ProjectDiscuss implements Serializable{

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@ManyToOne(cascade = { CascadeType.MERGE, CascadeType.REFRESH },fetch=FetchType.EAGER, optional = false)
	@JoinColumn(name = "user_id")
	private User user;
	
	@ManyToOne(cascade = { CascadeType.MERGE, CascadeType.REFRESH }, fetch=FetchType.EAGER, optional = false)
	@JoinColumn(name = "project_id")
	private Project project;
	
	private String discuss;//评论
	
	private Integer discussType;//0不赞成，1赞成
	
	//是否有效
	private Integer status;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Project getProject() {
		return project;
	}

	public void setProject(Project project) {
		this.project = project;
	}

	public String getDiscuss() {
		return discuss;
	}

	public void setDiscuss(String discuss) {
		this.discuss = discuss;
	}

	public Integer getDiscussType() {
		return discussType;
	}

	public void setDiscussType(Integer discussType) {
		this.discussType = discussType;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	} 
	
	
}
