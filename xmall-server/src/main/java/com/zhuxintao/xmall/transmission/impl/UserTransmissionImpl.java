package com.zhuxintao.xmall.transmission.impl;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.alibaba.dubbo.config.annotation.Service;
import com.zhuxintao.xmall.entity.User;
import com.zhuxintao.xmall.service.UserService;
import com.zhuxintao.xmall.transmission.UserTransmission;

@Component("userTransmission")
@Service(version="1.0.0")
public class UserTransmissionImpl implements UserTransmission{
	@Resource(name="userService")
	private UserService userService;
	
	public User getUserByLoginName(String loginName) throws Exception {
		User user = userService.getUserByLoginName(loginName);
		return user;
	}

	
	public Map<String, Object> getUserListByPage(Integer pageNum, Integer pageSize, String username) throws Exception {
		Map<String, Object> resultMap = userService.getUserListByPage(pageNum,pageSize,username);
		return resultMap;
	}

	
	

}
