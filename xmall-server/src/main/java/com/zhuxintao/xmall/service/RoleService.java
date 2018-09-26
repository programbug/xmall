package com.zhuxintao.xmall.service;

import com.zhuxintao.xmall.entity.Role;
import com.zhuxintao.xmall.entity.XMallPage;

public interface RoleService {
	public XMallPage<Role> getRoleListByPage(Integer pageNum, Integer pageSize, String roleName) throws Exception;

}
