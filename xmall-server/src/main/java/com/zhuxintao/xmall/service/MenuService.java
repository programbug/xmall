package com.zhuxintao.xmall.service;

import java.util.List;

import com.zhuxintao.xmall.entity.Menu;
import com.zhuxintao.xmall.entity.Role;

public interface MenuService {
	public List<Menu> getMenuListByRole(Role role) throws Exception;
}
