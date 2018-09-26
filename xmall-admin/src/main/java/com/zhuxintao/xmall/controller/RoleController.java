package com.zhuxintao.xmall.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.dubbo.config.annotation.Reference;
import com.zhuxintao.xmall.base.controller.BaseController;
import com.zhuxintao.xmall.entity.Role;
import com.zhuxintao.xmall.entity.XMallPage;
import com.zhuxintao.xmall.transmission.RoleTransmission;
import com.zhuxintao.xmall.util.ConstantsUtil;

@Controller("roleController")
@RequestMapping("/role")
public class RoleController extends BaseController{
	@Reference(version="1.0.0")
	private RoleTransmission roleTransmission;
	
	
	@RequestMapping(value="/list/{pageNum}/{roleName}")
	public ModelAndView getRoleListByPage(
			@PathVariable("pageNum")Integer pageNum,
			@PathVariable("roleName")String roleName) throws Exception {
		Map<String, Object> resultMap = new HashMap<String,Object>();
		//对分页查询的pageNum、roleName条件进行判断
		if (pageNum == null || pageNum < 1) {
			//若pageNum满足以下条件，对pageNum赋值常量1
			pageNum = ConstantsUtil.PAGE_NUM;
		}
		if (roleName == null || "0".equals(roleName) || "".equals(roleName.trim())) {
			roleName = null;
		}else {
			resultMap.put("roleName",roleName);
		}
		
		XMallPage<Role> xmallPage = roleTransmission.getRoleListByPage(pageNum,ConstantsUtil.PAGE_SIZE,roleName);
		resultMap.put("page",xmallPage);
		return new ModelAndView("role/role_list",resultMap);
	}
	
	
	
	
	
	
	
	
	
	
}
