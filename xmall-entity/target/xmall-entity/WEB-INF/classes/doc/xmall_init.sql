/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.40 : Database - peppa
*********************************************************************
*/


DROP TABLE IF EXISTS sys_menu;
CREATE TABLE sys_menu (
  menu_id int(10) NOT NULL AUTO_INCREMENT COMMENT '菜单主键',
  parent_id varchar(10) DEFAULT NULL COMMENT '父级菜单',
  menu_name varchar(200) DEFAULT NULL COMMENT '菜单名称',
  menu_url varchar(500) DEFAULT NULL COMMENT '菜单url地址',
  menu_status varchar(50) DEFAULT NULL COMMENT '菜单状态',
  PRIMARY KEY (menu_id)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4;
insert  into sys_menu(menu_id,parent_id,menu_name,menu_url,menu_status) values (1,'0','用户管理',NULL,'Y'),(2,'0','商品管理',NULL,'Y'),(3,'0','订单管理',NULL,'Y'),(4,'0','广告管理',NULL,'Y'),(5,'0','购物车管理',NULL,'Y'),(6,'0','会员管理',NULL,'Y'),(7,'0','支付方式',NULL,'Y'),(8,'0','信息通知',NULL,'Y'),(9,'0','系统管理',NULL,'Y'),(10,'1','菜单管理',NULL,'Y'),(11,'1','角色管理',NULL,'Y'),(12,'1','人员管理',NULL,'Y'),(13,'1','权限管理',NULL,'Y'),(14,'2','商品列表',NULL,'Y'),(15,'2','商品分类',NULL,'Y'),(16,'2','用户评论',NULL,'Y'),(17,'2','商品回收站',NULL,'Y'),(18,'2','库存管理',NULL,'Y'),(19,'3','订单列表',NULL,'Y'),(20,'3','添加订单',NULL,'Y'),(21,'3','发货单列表',NULL,'Y'),(22,'3','换货单列表',NULL,'Y'),(23,'3','订单打印',NULL,'Y'),(24,'3','合并订单',NULL,'Y'),(25,'4','广告列表',NULL,'Y'),(26,'4','添加广告列表',NULL,'Y'),(27,'5','购物车商品管理',NULL,'Y'),(28,'5','商品类别管理',NULL,'Y'),(29,'6','会员列表',NULL,'Y'),(30,'6','会员未激活列表',NULL,'Y'),(31,'6','会员激活列表',NULL,'Y'),(32,'7','网上钱包支付',NULL,'Y'),(33,'7','银行卡支付',NULL,'Y'),(34,'8','站内消息/留言',NULL,'Y'),(35,'8','短息',NULL,'Y'),(36,'8','邮件',NULL,'Y'),(37,'8','微信',NULL,'Y'),(38,'8','客服',NULL,'Y'),(39,'9','数据备份',NULL,'Y'),(40,'9','邮件/短信管理',NULL,'Y'),(41,'9','网站设置',NULL,'Y'),(42,'9','平台设置',NULL,'Y'),(44,'2','商品添加',NULL,'Y');


DROP TABLE IF EXISTS sys_role;
CREATE TABLE sys_role (
  role_id int(10) NOT NULL AUTO_INCREMENT COMMENT '角色主键',
  role_name varchar(200) DEFAULT NULL COMMENT '角色名称',
  role_status varchar(50) DEFAULT NULL COMMENT '角色状态 Y-启用，N-禁用',
  PRIMARY KEY (role_id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
insert  into sys_role(role_id,role_name,role_status) values (1,'超级管理员','Y');


DROP TABLE IF EXISTS sys_role_menu;
CREATE TABLE sys_role_menu (
  role_id int(10) DEFAULT NULL COMMENT '角色主键',
  menu_id int(10) DEFAULT NULL COMMENT '菜单主键'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
insert  into sys_role_menu(role_id,menu_id) values (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9);


DROP TABLE IF EXISTS sys_user;
CREATE TABLE sys_user (
  user_id int(10) NOT NULL AUTO_INCREMENT COMMENT '用户主键',
  user_no varchar(100) DEFAULT NULL COMMENT '用户编号',
  username varchar(200) DEFAULT NULL COMMENT '真实姓名',
  login_name varchar(500) DEFAULT NULL COMMENT '登录名',
  password varchar(500) DEFAULT NULL COMMENT '登录密码，MD5加密',
  role_id int(10) DEFAULT NULL COMMENT '用户角色',
  gender varchar(50) DEFAULT NULL COMMENT '性别：M-男，F-女',
  id_card varchar(400) DEFAULT NULL COMMENT '身份证号码',
  cellphone varchar(200) DEFAULT NULL COMMENT '联系电话',
  email varchar(500) DEFAULT NULL COMMENT '电子邮件',
  birthday date DEFAULT NULL COMMENT '出生日期',
  user_status varchar(50) DEFAULT NULL COMMENT '状态：Y-启用，N-禁用',
  create_user int(10) DEFAULT NULL COMMENT '创建人',
  create_time timestamp NULL DEFAULT NULL COMMENT '创建日期',
  update_user int(10) DEFAULT NULL COMMENT '更新人',
  update_time timestamp NULL DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (user_id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
insert  into sys_user(user_id,user_no,username,login_name,password,role_id,gender,id_card,cellphone,email,birthday,user_status,create_user,create_time,update_user,update_time) values (1,'AUG_00001','李四','lisi','dc3a8f1670d65bea69b7b65048a0ac40',1,'男','610115199801050406','18746892356',NULL,NULL,'Y',NULL,'2018-09-05 16:42:09',NULL,'2018-09-06 16:42:16');

