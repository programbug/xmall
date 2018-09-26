package com.zhuxintao.xmall.transmission.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.alibaba.dubbo.config.annotation.Service;
import com.zhuxintao.xmall.entity.Menu;
import com.zhuxintao.xmall.entity.Role;
import com.zhuxintao.xmall.service.MenuService;
import com.zhuxintao.xmall.transmission.MenuTransmission;

@Component("menuTransmission")
@Service(version="1.0.0")
public class MenuTransmissionImpl implements MenuTransmission{
	@Resource(name="menuService")
	private MenuService menuService;
	
	public List<Menu> getMenuListByRole(Role role) throws Exception {
		List<Menu> menuList = menuService.getMenuListByRole(role);
		return menuList;
	}

}
