package com.zhuxintao.xmall.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * @Entity:说明该类是实体类，并使用默认的ORM规则(类名即表名，类属性名即表字段名)；
 * 
 * ---若想改变这种默认的ORM规则，可以使用---
 * @Table 来改变类名与数据表名的映射规则，可以使用
 * @Column 来改变类名中的属性名与数据表中的字段名的映射规则
 * 
 * 当使用@Entity与@id这两个注解，就可以实现一个实体类与数据库中的表相对应，存在映射关系
 * 当实体类的类名与映射的数据库的表名不同名时，可以使用@Table标注说明
 * 若表名不一致，可以采用name属性实现映射，即使表名一致
 * @Table和@Entity注解，可以并列使用
 * 
 * @Id 标注属性的主键(一个实体中可以出现多个@Id注解，但需要@IdClass配合使用，以表示联合主键)
 * 一旦标注了主键，该实体属性的值可以指定，进行增删改查，即根据特定的规则自动生成
 * @Id 标识数据类型：	--Java基本数据类型：byte、short、int、long、char
 * 					--Java基本数据类型对应封装类：Byte、Short、Integer、Long、Character
 * 					--大数值型类：java.math.BigInteger
 * 					--字符串类型：String
 * 					--时间日期类型：java.util.Data、java.sql.Date
 * 					double、float浮点类型和其所对应的封装类都不能作为主键，由于判断主键是否唯一是通过
 * 					equals()方法来判断的，浮点型的精度太大，不能准确的匹配
 *
 *@GeneratedValue 标注主键的生成策略
 *		其属性名		释义					值															默认值						
 *	   strategy		主键的生成策略		GenerationType.TABLE 通过表产生主键，框架借由表模拟序列产生主键
 *									GenerationType.SEQUENCE 通过序列产生主键（不支持MySql）				GenerationType.AUTO
 *									GenerationType.IDENTITY 自增长(不支持Oracle)
 *									GenerationType.AUTO	自动选择合适的策略
 *	   
 *		generator	自定义生成策略		字符串(对应@GenericGenerator注解的name属性值)	
 * 注意：同一张表中自增列最多只能有一列
 * 
 */
@Entity
@Table(name="sys_user")
public class User implements Serializable{
	private static final long serialVersionUID = 1L;
	private Long userId;
	private String username;
	private String loginName;
	private String password;
	private Role role;
	private String gender;
	private String idCard;
	private String cellphone;
	private String email;
	private Date birthday;
	private Status status;
	private User createUser;
	private Date createTime;
	private User updateUser;
	private Date updateTime;
	
	public User() {}
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	//targetEntity:指定关联实体类型，默认为被注解的属性或方法所属的类，即实体名+class
	/**
	 * cascade：级联操作策略
	 * 		1、CascadeType.ALL--------级联所有操作
	 * 		2、CascadeType.PERSIST----级联新增
	 * 		3、CascadeType.MERGE------级联归并更新
	 * 		4、CascadeType.REMOVE-----级联删除
	 * 		5、CascadeType.REFRESH----级联刷新
	 * 		6、CascadeType.DETACH-----级联分离
	 * 	
	 * @JoinColumn 定义表关联的外键字段名
	 * 		常用参数：
	 * 			1、name：指定映射到数据库中的外键的字段名
	 * 			2、unique：是否唯一，默认为false
	 * 			3、nullable：是否允许为null，默认为true
	 * 			4、insertable：是否允许插入，默认为true
	 * 			5、updatetable：是否允许更新，默认为true
	 * 			6、columnDefinition：指定该属性映射到数据库中的实际类型，通常是自动判断。
	 */
	@ManyToOne(targetEntity=Role.class,fetch=FetchType.EAGER,
				cascade= {CascadeType.PERSIST,CascadeType.MERGE})
	@JoinColumn(name="role_id")
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getIdCard() {
		return idCard;
	}
	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}
	public String getCellphone() {
		return cellphone;
	}
	public void setCellphone(String cellphone) {
		this.cellphone = cellphone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
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
	
	/**
	 * @Temporal(TemporalType.*)日期注解
	 * 	  在某类中有Date类型的属性，数据库中存储的可能是"yyyy-MM-dd hh:mm:ss"形式
	 * 	  若要查询，并获得年月日，时分秒，在该属性上标注@Temporal(TemporalType.TIMESTAMP)
	 * 	  若想得到形如'yyyy-MM-dd'格式的日期，可以采用注解@Temporal(TemporalType.DATE)
	 * 	  若想得到形如'hh-MM-ss'格式的日期，可以采用注解@Temporal(TemporalType.TIME)
	 */
	
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
}
