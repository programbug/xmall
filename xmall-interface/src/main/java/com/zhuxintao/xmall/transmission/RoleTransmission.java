package com.zhuxintao.xmall.transmission;

import com.zhuxintao.xmall.entity.Role;
import com.zhuxintao.xmall.entity.XMallPage;

public interface RoleTransmission {
	public XMallPage<Role> getRoleListByPage(
			Integer pageNum, Integer pageSize, String roleName) throws Exception;

}
