package com.zhuxintao.xmall.transmission;

import java.util.List;

import com.zhuxintao.xmall.entity.Menu;
import com.zhuxintao.xmall.entity.Role;

public interface MenuTransmission {
	public List<Menu> getMenuListByRole(Role role) throws Exception;

}
