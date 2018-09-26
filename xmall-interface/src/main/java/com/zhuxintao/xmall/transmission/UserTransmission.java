package com.zhuxintao.xmall.transmission;

import java.util.Map;

import com.zhuxintao.xmall.entity.User;

public interface UserTransmission {
	public User getUserByLoginName(String loginName) throws Exception;

	public Map<String, Object> getUserListByPage(Integer pageNum, Integer pageSize, String username) throws Exception;

}
