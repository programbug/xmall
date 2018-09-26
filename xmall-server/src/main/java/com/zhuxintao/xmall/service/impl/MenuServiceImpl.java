package com.zhuxintao.xmall.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.zhuxintao.xmall.dao.MenuDao;
import com.zhuxintao.xmall.entity.Menu;
import com.zhuxintao.xmall.entity.Role;
import com.zhuxintao.xmall.service.MenuService;

@Service("menuService")
@Transactional
public class MenuServiceImpl implements MenuService{
	@Resource(name="menuDao")
	private MenuDao menuDao;
	
	public List<Menu> getMenuListByRole(Role role) throws Exception {
		//根据角色的Id获取所有的一级菜单,一级菜单没有父级，Menu数据表中的parent_id为0，从0开始。
		//根据Menu数据表中的parent_id获取一级菜单信息
		List<Menu> menuList = menuDao.findFirstMenuListByRole(role.getRoleId());
		//将获得一级菜单列表进行循环遍历，通过每一个一级菜单获得其子菜单
		if (menuList != null && menuList.size() > 0) {
			for (Menu first : menuList) {
				//根据一级菜单的menu_id获取二级菜单
				List<Menu> childMenuList = menuDao.findChildMenuListByRoleParent(role.getRoleId(),first.getMenuId());
				first.setChildMenuList(childMenuList);
			}
		}
		return menuList;	
	}
}
