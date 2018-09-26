package com.zhuxintao.xmall.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="sys_status")
public class Status implements Serializable{
	private static final long serialVersionUID = 1L;
	private Long statusId;
	private Status parent;
	private String statusName;
	private String statusCode;
	private Integer sortOrder;
	private List<Status> statusList;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="status_id")
	public Long getStatusId() {
		return statusId;
	}
	public void setStatusId(Long statusId) {
		this.statusId = statusId;
	}
	
	@ManyToOne(targetEntity=Status.class,fetch=FetchType.EAGER,
					cascade= {CascadeType.PERSIST,CascadeType.MERGE})
	@JoinColumn(name="parent_id")
	public Status getParent() {
		return parent;
	}
	public void setParent(Status parent) {
		this.parent = parent;
	}
	
	@Column(name="status_name")
	public String getStatusName() {
		return statusName;
	}
	public void setStatusName(String statusName) {
		this.statusName = statusName;
	}
	
	@Column(name="status_code")
	public String getStatusCode() {
		return statusCode;
	}
	public void setStatusCode(String statusCode) {
		this.statusCode = statusCode;
	}
	
	@Column(name="sort_order")
	public Integer getSortOrder() {
		return sortOrder;
	}
	public void setSortOrder(Integer sortOrder) {
		this.sortOrder = sortOrder;
	}
	
	@OneToMany(targetEntity=Status.class,
				mappedBy="parent",
				cascade= {CascadeType.PERSIST,CascadeType.MERGE})
	public List<Status> getStatusList() {
		return statusList;
	}
	public void setStatusList(List<Status> statusList) {
		this.statusList = statusList;
	}
}
