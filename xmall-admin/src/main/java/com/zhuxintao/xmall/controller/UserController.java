package com.zhuxintao.xmall.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.alibaba.dubbo.config.annotation.Reference;
import com.zhuxintao.xmall.base.controller.BaseController;
import com.zhuxintao.xmall.transmission.UserTransmission;
import com.zhuxintao.xmall.util.ConstantsUtil;

@Controller("userController")
@RequestMapping("/user")
public class UserController extends BaseController{
	@Reference(version="1.0.0")
	private UserTransmission userTransmission;
	
	//获得登录请求，跳转用户登录界面
	@RequestMapping(value="/userLogin",method=RequestMethod.GET)
	public String getUserLoginForm() throws Exception {
		return "user/user_login_form";
	}
	
	
	//验证失败，重定向到登录界面
	@RequestMapping(value="/userLogin",method=RequestMethod.POST)
	public ModelAndView loginError() throws Exception {
		System.out.println("认证失败！");
		String url = request.getContextPath() + "user/userLogin";
		RedirectView view = new RedirectView(url);
		return new ModelAndView(view);
	}
	
	
	//登录成功，进入管理员管理界面，获取用户的列表信息
	@RequestMapping(value="/list/{pageNum}/{username}")
	public ModelAndView getUserList(
			@PathVariable(name="pageNum")Integer pageNum, 
			@PathVariable(name="username")String username) throws Exception {
		//对所输入的用户信息进行判断处理
		if (username != null && "".equals(username.trim())) {
			username = null;
		}else {
			username = username.trim();
		}
		if (pageNum == null || pageNum > 1) {
			pageNum = ConstantsUtil.PAGE_NUM;
		}
		//通过resultMap集合存放通过分页查询获得的用户列表信息
		Map<String, Object> resultMap = userTransmission.getUserListByPage(pageNum,ConstantsUtil.PAGE_SIZE,username);
		return new ModelAndView("user/user_list",resultMap);
	}
}













