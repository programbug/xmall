package com.zhuxintao.xmall.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


//被Entity标注的实体类将会被JPA管理控制，当程序运行时，JPA会识别并映射到指定的数据库表，
//唯一参数name：指定实体类名称，默认为当前实体类的非限定名称
//比如：@Entity(name="xxx"),则JPA在数据层进行自定义查询时，所查的表名应为xxx

//@Table ：所生成的数据库表名和实体类名称不相同时，可以使用@Table(name="数据库表名")，
//与@Entity标注并列使用，置于实体类声明语句之前

@Entity
@Table(name="sys_menu")
public class Menu implements Serializable{
	private static final long serialVersionUID = 1L;
	private Long menuId;
	private Menu parent;
	private	String menuName;
	private String menuUrl;
	private Integer sortOrder;
	private Status status;
	private User createUser;
	private Date createTime;
	private User updateUser;
	private Date updateTime;
	private List<Menu> childMenuList;
	private List<Role> roleList;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Long getMenuId() {
		return menuId;
	}
	public void setMenuId(Long menuId) {
		this.menuId = menuId;
	}
	
	@ManyToOne(targetEntity=Menu.class,fetch=FetchType.EAGER,
				cascade= {CascadeType.PERSIST,CascadeType.MERGE})
	@JoinColumn(name="parent_id")
	public Menu getParent() {
		return parent;
	}
	public void setParent(Menu parent) {
		this.parent = parent;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public String getMenuUrl() {
		return menuUrl;
	}
	public void setMenuUrl(String menuUrl) {
		this.menuUrl = menuUrl;
	}
	public Integer getSortOrder() {
		return sortOrder;
	}
	public void setSortOrder(Integer sortOrder) {
		this.sortOrder = sortOrder;
	}
	
	@ManyToOne(targetEntity=Status.class,fetch=FetchType.EAGER,
				cascade= {CascadeType.PERSIST,CascadeType.MERGE})
	@JoinColumn(name="status_id")
	public Status getStatus() {
		return status;
	}
	public void setStatus(Status status) {
		this.status = status;
	}
	
	@ManyToOne(targetEntity=User.class,fetch=FetchType.EAGER,
				cascade= {CascadeType.PERSIST,CascadeType.MERGE})
	@JoinColumn(name="create_user")
	public User getCreateUser() {
		return createUser;
	}
	public void setCreateUser(User createUser) {
		this.createUser = createUser;
	}
	
	@Temporal(TemporalType.TIMESTAMP)
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	
	@ManyToOne(targetEntity=User.class,fetch=FetchType.EAGER,
				cascade= {CascadeType.PERSIST,CascadeType.MERGE})
	@JoinColumn(name="update_user")
	public User getUpdateUser() {
		return updateUser;
	}
	public void setUpdateUser(User updateUser) {
		this.updateUser = updateUser;
	}
	
	@Temporal(TemporalType.TIMESTAMP)
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	
	@OneToMany(targetEntity=Menu.class,
				mappedBy="parent",
				cascade= {CascadeType.PERSIST,CascadeType.MERGE})
	public List<Menu> getChildMenuList() {
		return childMenuList;
	}
	public void setChildMenuList(List<Menu> childMenuList) {
		this.childMenuList = childMenuList;
	}
	
	@ManyToMany(targetEntity=Role.class,
					cascade= {CascadeType.PERSIST,CascadeType.MERGE})
	@JoinTable(name="sys_role_menu",
						joinColumns= {@JoinColumn(name="menu_id")},
						inverseJoinColumns= {@JoinColumn(name="role_id")})
	public List<Role> getRoleList() {
		return roleList;
	}
	public void setRoleList(List<Role> roleList) {
		this.roleList = roleList;
	}
	
	
}
