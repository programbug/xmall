package com.zhuxintao.xmall.transmission.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.alibaba.dubbo.config.annotation.Service;
import com.zhuxintao.xmall.entity.Role;
import com.zhuxintao.xmall.entity.XMallPage;
import com.zhuxintao.xmall.service.RoleService;
import com.zhuxintao.xmall.transmission.RoleTransmission;
@Component("roleTransmission")
@Service(version="1.0.0")
public class RoleTransmissionImpl implements RoleTransmission{
	@Resource(name="roleService")
	private RoleService roleService;
	
	public XMallPage<Role> getRoleListByPage(Integer pageNum, Integer pageSize, String roleName) throws Exception {
		return roleService.getRoleListByPage(pageNum,pageSize,roleName);
	}

}
