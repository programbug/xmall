DROP TABLE IF EXISTS sys_address;
CREATE TABLE sys_address (
  address_id int(10) NOT NULL AUTO_INCREMENT COMMENT '地址主键',
  province_id int(10) DEFAULT NULL COMMENT '省份主键',
  city_id int(10) DEFAULT NULL COMMENT '城市主键',
  county_id int(10) DEFAULT NULL COMMENT '区县主键',
  detail varchar(500) DEFAULT NULL COMMENT '具体地址',
  linkman varchar(255) DEFAULT NULL COMMENT '联系人',
  cellphone varchar(100) DEFAULT NULL COMMENT '联系电话',
  zipcode varchar(100) DEFAULT NULL COMMENT '邮政编码',
  associator_id int(10) DEFAULT NULL COMMENT '会员',
  status_id int(10) DEFAULT NULL COMMENT '状态',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  update_time timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  PRIMARY KEY (address_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS sys_associator;
CREATE TABLE sys_associator (
  associator_id int(10) NOT NULL AUTO_INCREMENT COMMENT '消费者主键',
  associator_name varchar(255) DEFAULT NULL COMMENT '消费者名称',
  nickname varchar(500) DEFAULT NULL COMMENT '昵称，登录名',
  password varchar(500) DEFAULT NULL COMMENT '登录密码：MD5加密',
  gender varchar(10) DEFAULT NULL COMMENT '性别：M-男，F-女',
  rank_id int(10) DEFAULT NULL COMMENT '会员主键-会员等级',
  point int(10) DEFAULT NULL COMMENT '会员积分',
  id_card varchar(100) DEFAULT NULL COMMENT '身份证号码',
  cellphone varchar(100) DEFAULT NULL COMMENT '联系电话',
  email varchar(500) DEFAULT NULL COMMENT '电子邮件',
  status_id int(10) DEFAULT NULL COMMENT '状态',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  update_time timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  PRIMARY KEY (associator_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS sys_attr_value;
CREATE TABLE sys_attr_value (
  attr_value_id int(10) NOT NULL AUTO_INCREMENT COMMENT '属性值主键',
  attribute_id int(10) DEFAULT NULL COMMENT '属性主键',
  attr_value_text varchar(255) DEFAULT NULL COMMENT '属性值内容',
  status_id int(10) DEFAULT NULL COMMENT '状态',
  create_user int(10) DEFAULT NULL COMMENT '创建人',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  update_user int(10) DEFAULT NULL COMMENT '修改人',
  update_time timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  PRIMARY KEY (attr_value_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS sys_attribute;
CREATE TABLE sys_attribute (
  attribute_id int(10) NOT NULL AUTO_INCREMENT COMMENT '属性主键',
  attribute_name varchar(255) DEFAULT NULL COMMENT '属性名称',
  category_id int(10) DEFAULT NULL COMMENT '所在分类',
  status_id int(10) DEFAULT NULL COMMENT '状态',
  create_user int(10) DEFAULT NULL COMMENT '创建人',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  update_user int(10) DEFAULT NULL COMMENT '修改人',
  update_time timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  PRIMARY KEY (attribute_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS sys_cart;
CREATE TABLE sys_cart (
  cart_id int(10) NOT NULL AUTO_INCREMENT COMMENT '购物车主键',
  associator_id int(10) DEFAULT NULL COMMENT '会员主键',
  sku_id int(10) DEFAULT NULL COMMENT 'sku主键',
  quantity int(10) DEFAULT NULL COMMENT '数量',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  update_time timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  PRIMARY KEY (cart_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS sys_category;
CREATE TABLE sys_category (
  category_id int(10) NOT NULL AUTO_INCREMENT COMMENT '类别主键',
  parent_id int(10) DEFAULT NULL COMMENT '上级类别主键',
  category_name varchar(255) DEFAULT NULL COMMENT '类别名称',
  category_code varchar(255) DEFAULT NULL COMMENT '类别编号',
  sort_order int(10) DEFAULT NULL COMMENT '排序',
  status_id int(10) DEFAULT NULL COMMENT '类别状态',
  create_user int(10) DEFAULT NULL COMMENT '创建人',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  update_user int(10) DEFAULT NULL COMMENT '修改人',
  update_time timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  PRIMARY KEY (category_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS sys_city;
CREATE TABLE sys_city (
  city_id int(10) NOT NULL AUTO_INCREMENT COMMENT '城市主键',
  province_id int(10) DEFAULT NULL COMMENT '所在省份',
  city_name varchar(255) DEFAULT NULL COMMENT '城市名称',
  city_code varchar(255) DEFAULT NULL COMMENT '城市编码',
  PRIMARY KEY (city_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS sys_county;
CREATE TABLE sys_county (
  county_id int(10) NOT NULL COMMENT '区县主键',
  province_id int(10) DEFAULT NULL COMMENT '所在省份',
  city_id int(10) DEFAULT NULL COMMENT '所在城市',
  country_name varchar(225) DEFAULT NULL COMMENT '区县名称',
  country_code varchar(255) DEFAULT NULL COMMENT '区县编码',
  PRIMARY KEY (county_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS sys_menu;
CREATE TABLE sys_menu (
  menu_id int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单主键',
  parent_id int(11) DEFAULT NULL COMMENT '上级菜单主键',
  menu_name varchar(255) DEFAULT NULL COMMENT '菜单名称',
  menu_url varchar(500) DEFAULT NULL COMMENT '菜单链接地址',
  sort_order int(10) DEFAULT NULL COMMENT '排序字段',
  status_id int(10) DEFAULT NULL COMMENT '菜单状态主键',
  create_user int(10) DEFAULT NULL COMMENT '创建人',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  update_user int(10) DEFAULT NULL COMMENT '更新人',
  update_time timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (menu_id)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;
insert  into sys_menu(menu_id,parent_id,menu_name,menu_url,sort_order,status_id,create_user,create_time,update_user,update_time) values (1,0,'系统管理',NULL,1,1,1,'2018-09-20 12:11:21',NULL,'2018-09-20 12:11:21'),(2,0,'基础管理',NULL,2,1,1,'2018-09-20 12:10:21',NULL,'2018-09-20 12:10:21'),(3,0,'商品管理',NULL,3,1,1,'2018-09-20 12:10:26',NULL,'2018-09-20 12:10:26'),(4,0,'交易管理',NULL,4,1,1,'2018-09-20 12:10:19',NULL,'2018-09-20 12:10:19'),(5,0,'用户管理','/user/list/0/0',5,1,1,'2018-09-20 12:10:20',NULL,'2018-09-20 12:10:20'),(6,0,'物流管理',NULL,6,1,1,'2018-09-20 12:10:18',NULL,'2018-09-20 12:10:18'),(7,1,'后台用户',NULL,11,1,1,'2018-09-20 12:10:17',NULL,'2018-09-20 12:10:17'),(8,1,'后台角色',NULL,12,1,1,'2018-09-20 12:10:13',NULL,'2018-09-20 12:10:13'),(9,1,'个人信息',NULL,13,1,1,'2018-09-20 12:10:12',NULL,'2018-09-20 12:10:12'),(10,2,'地址管理',NULL,21,1,1,'2018-09-20 12:10:11',NULL,'2018-09-20 12:10:11'),(11,3,'商品类别',NULL,31,1,1,'2018-09-20 12:10:10',NULL,'2018-09-20 12:10:10'),(12,3,'商品属性',NULL,32,1,1,'2018-09-20 12:10:09',NULL,'2018-09-20 12:10:09'),(13,3,'商品属性值',NULL,33,1,1,'2018-09-20 12:10:08',NULL,'2018-09-20 12:10:08'),(14,3,'商品信息',NULL,34,1,1,'2018-09-20 12:10:07',NULL,'2018-09-20 12:10:07'),(15,4,'注册用户',NULL,41,1,1,'2018-09-20 12:10:06',NULL,'2018-09-20 12:10:06'),(16,4,'订单管理',NULL,42,1,1,'2018-09-20 12:10:04',NULL,'2018-09-20 12:10:04');


DROP TABLE IF EXISTS sys_order;
CREATE TABLE sys_order (
  order_id int(10) NOT NULL AUTO_INCREMENT COMMENT '订单主键',
  order_no varchar(255) DEFAULT NULL COMMENT '订单编号',
  associator_id int(10) DEFAULT NULL COMMENT '会员主键',
  total_price decimal(10,2) DEFAULT NULL COMMENT '总费用',
  pay_platform_id int(10) DEFAULT NULL COMMENT '支付平台',
  freight decimal(10,2) DEFAULT NULL COMMENT '运费',
  freight_type varchar(255) DEFAULT NULL COMMENT '运费支付方式',
  express_name varchar(255) DEFAULT NULL COMMENT '快递公司名称',
  express_no varchar(100) DEFAULT NULL COMMENT '快递编号',
  receive_address varchar(1000) DEFAULT NULL COMMENT '收货地址',
  status_id int(10) DEFAULT NULL COMMENT '订单状态',
  payment_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '支付时间',
  send_time timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '发货时间',
  receive_time timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '收货时间',
  close_time timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '关闭时间',
  PRIMARY KEY (order_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS sys_order_detail;
CREATE TABLE sys_order_detail (
  order_detail_id int(10) NOT NULL AUTO_INCREMENT COMMENT '订单详情主键',
  order_id int(10) DEFAULT NULL COMMENT '订单主键',
  sku_id int(10) DEFAULT NULL COMMENT 'sku主键',
  current_price decimal(10,2) DEFAULT NULL COMMENT '购买价格',
  quantity int(10) DEFAULT NULL COMMENT '数量',
  total_price decimal(10,2) DEFAULT NULL COMMENT '总价格',
  PRIMARY KEY (order_detail_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS sys_pay_platform;
CREATE TABLE sys_pay_platform (
  pay_platform_id int(11) NOT NULL AUTO_INCREMENT COMMENT '支付平台主键',
  pay_platform_name varchar(255) DEFAULT NULL COMMENT '支付平台名称',
  icon varchar(500) DEFAULT NULL COMMENT '图标',
  pay_platform_url varchar(500) DEFAULT NULL COMMENT '链接地址',
  PRIMARY KEY (pay_platform_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS sys_product;
CREATE TABLE sys_product (
  product_id int(10) NOT NULL AUTO_INCREMENT COMMENT '商品主键',
  category_id int(10) DEFAULT NULL COMMENT '所在分类',
  product_code varchar(255) DEFAULT NULL COMMENT '商品编号',
  product_name varchar(255) DEFAULT NULL COMMENT '商品名称',
  subtitle varchar(255) DEFAULT NULL COMMENT '副标题',
  main_img varchar(500) DEFAULT NULL COMMENT '主图片',
  sub_img varchar(500) DEFAULT NULL COMMENT '副图片',
  synopsis text COMMENT '简介',
  detail text COMMENT '详情',
  sort_order int(10) DEFAULT NULL COMMENT '排序字段',
  status_id int(10) DEFAULT NULL COMMENT '产品状态',
  create_user int(10) DEFAULT NULL COMMENT '创建人',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  update_user int(10) DEFAULT NULL COMMENT '修改人',
  update_time timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  PRIMARY KEY (product_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS sys_product_sku;
CREATE TABLE sys_product_sku (
  product_sku_id int(10) NOT NULL AUTO_INCREMENT COMMENT 'sku主键',
  product_id int(10) DEFAULT NULL COMMENT '商品主键',
  product_sku_code varchar(255) DEFAULT NULL COMMENT 'sku编码',
  price decimal(10,2) DEFAULT NULL COMMENT '价格',
  preferential decimal(10,2) DEFAULT NULL COMMENT '优惠金额',
  point int(10) DEFAULT NULL COMMENT '积分',
  stock int(10) DEFAULT NULL COMMENT '库存',
  PRIMARY KEY (product_sku_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS sys_province;
CREATE TABLE sys_province (
  province_id int(10) NOT NULL AUTO_INCREMENT COMMENT '省份主键',
  province_name varchar(255) DEFAULT NULL COMMENT '省份名称',
  province_code varchar(255) DEFAULT NULL COMMENT '省份编码',
  PRIMARY KEY (province_id)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4;
insert  into sys_province(province_id,province_name,province_code) values (1,'北京市','110000'),(2,'天津市','120000'),(3,'河北省','130000'),(4,'山西省','140000'),(5,'内蒙古自治区','150000'),(6,'辽宁省','210000'),(7,'吉林省','220000'),(8,'黑龙江省','230000'),(9,'上海市','310000'),(10,'江苏省','320000'),(11,'浙江省','330000'),(12,'安徽省','340000'),(13,'福建省','350000'),(14,'江西省','360000'),(15,'山东省','370000'),(16,'河南省','410000'),(17,'湖北省','420000'),(18,'湖南省','430000'),(19,'广东省','440000'),(20,'广西壮族自治区','450000'),(21,'海南省','460000'),(22,'重庆市','500000'),(23,'四川省','510000'),(24,'贵州省','520000'),(25,'云南省','530000'),(26,'西藏自治区','540000'),(27,'陕西省','610000'),(28,'甘肃省','620000'),(29,'青海省','630000'),(30,'宁夏回族自治区','640000'),(31,'新疆维吾尔族自治区','650000'),(32,'台湾省','710000'),(33,'香港特别行政区','810000'),(34,'澳门特别行政区','820000');


DROP TABLE IF EXISTS sys_rank;
CREATE TABLE sys_rank (
  rank_id int(10) NOT NULL AUTO_INCREMENT COMMENT '会员等级主键',
  rank_name varchar(255) DEFAULT NULL COMMENT '会员等级名称',
  lowest_point int(10) DEFAULT NULL COMMENT '最低积分',
  highest_point int(10) DEFAULT NULL COMMENT '最高积分',
  sort_order int(10) DEFAULT NULL COMMENT '排序',
  create_user int(10) DEFAULT NULL COMMENT '创建人',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  update_user int(10) DEFAULT NULL COMMENT '修改人',
  update_time timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  PRIMARY KEY (rank_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS sys_role;
CREATE TABLE sys_role (
  role_id int(10) NOT NULL AUTO_INCREMENT COMMENT '角色主键',
  role_name varchar(255) DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (role_id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
insert  into sys_role(role_id,role_name) values (1,'超级管理员');


DROP TABLE IF EXISTS sys_role_menu;
CREATE TABLE sys_role_menu (
  role_id int(10) DEFAULT NULL COMMENT '角色主键',
  menu_id int(10) DEFAULT NULL COMMENT '菜单主键'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
insert  into sys_role_menu(role_id,menu_id) values (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16);


DROP TABLE IF EXISTS sys_sku_attr;
CREATE TABLE sys_sku_attr (
  sku_id int(10) DEFAULT NULL COMMENT 'sku主键',
  attr_value_id int(10) DEFAULT NULL COMMENT '属性值主键'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS sys_status;
CREATE TABLE sys_status (
  status_id int(10) NOT NULL AUTO_INCREMENT COMMENT '状态主键',
  parent_id int(10) DEFAULT NULL COMMENT '上级主键',
  status_name varchar(255) DEFAULT NULL COMMENT '状态名称',
  status_code varchar(255) DEFAULT NULL COMMENT '状态编码',
  sort_order int(10) DEFAULT NULL COMMENT '排序字段',
  PRIMARY KEY (status_id)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
insert  into sys_status(status_id,parent_id,status_name,status_code,sort_order) values (1,0,'启用','ENABLE',1),(2,1,'启用','ENABLE',11),(3,1,'禁用','DISABLE',12);

DROP TABLE IF EXISTS sys_user;
CREATE TABLE sys_user (
  user_id int(10) NOT NULL AUTO_INCREMENT COMMENT '用户主键',
  username varchar(255) DEFAULT NULL COMMENT '真实姓名',
  login_name varchar(255) DEFAULT NULL COMMENT '登录名',
  password varchar(500) DEFAULT NULL COMMENT '登录密码：MD5加密',
  gender varchar(10) DEFAULT NULL COMMENT '性别：M-男，F-女',
  role_id int(10) DEFAULT NULL COMMENT '用户角色',
  id_card varchar(100) DEFAULT NULL COMMENT '身份证号码',
  cellphone varchar(100) DEFAULT NULL COMMENT '联系电话',
  email varchar(500) DEFAULT NULL COMMENT '电子邮件',
  birthday date DEFAULT NULL COMMENT '出生日期',
  status_id int(10) DEFAULT NULL COMMENT '用户状态主键',
  create_user int(10) DEFAULT NULL COMMENT '创建人',
  create_timr timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  update_user int(10) DEFAULT NULL COMMENT '修改人',
  update_time timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  PRIMARY KEY (user_id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
insert  into sys_user(user_id,username,login_name,password,gender,role_id,id_card,cellphone,email,birthday,status_id,create_user,create_timr,update_user,update_time) values (1,'李四','lisi','dc3a8f1670d65bea69b7b65048a0ac40','男',1,'610115199409147011','18740395995','lisi@gmail.com','1990-01-01',1,NULL,'2018-09-20 13:51:55',NULL,'2018-09-20 13:51:55');
