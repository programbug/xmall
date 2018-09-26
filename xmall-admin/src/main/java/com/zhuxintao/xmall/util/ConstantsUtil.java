package com.zhuxintao.xmall.util;

import java.util.Properties;

public class ConstantsUtil {
	private static Properties props = new Properties();
	
	//设置静态代码块，获取配置文件信息
	static {
		try {
			//加载配置文件constants.properties信息
			props.load(ConstantsUtil.class.getClassLoader().
							getResourceAsStream("constants.properties"));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public static final String STATUS_YES = props.getProperty("sys.status.yes");
	public static final String STATUS_NO = props.getProperty("sys.status.no");
	
	public static final String GENDER_MALE = props.getProperty("sys.gender.male");
	public static final String GENDER_FEMALE = props.getProperty("sys.gender.female");
	
	public static final Integer PAGE_SIZE = Integer.parseInt(props.getProperty("sys.page.size"));
	public static final Integer PAGE_NUM = Integer.parseInt(props.getProperty("sys.page.num"));
}
