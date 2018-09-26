package com.zhuxintao.xmall.util;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.stereotype.Component;

import com.alibaba.dubbo.config.annotation.Reference;
import com.zhuxintao.xmall.entity.Status;
import com.zhuxintao.xmall.entity.User;
import com.zhuxintao.xmall.transmission.UserTransmission;

@Component("shiroDBRealm")
public class ShiroDBRealm extends AuthorizingRealm{
	
	@Reference(version="1.0.0")
	private UserTransmission userTransmission;
	
	//用户进行授权认证
	protected AuthorizationInfo doGetAuthorizationInfo(
			PrincipalCollection collection) {
		return null;
	}

	
	//用户进行登录安全认证
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken token) throws AuthenticationException {
		System.out.println("开始认证");
		//对于AuthenticationToken进行类型转换
		UsernamePasswordToken userToken = (UsernamePasswordToken) token;
		System.out.println(userToken);
		//获得用户登录名
		String loginName = userToken.getUsername();
		System.out.println(loginName);
		char[] chrs = userToken.getPassword();
		System.out.println(chrs);
		if (loginName != null && !"".equals(loginName.trim())
				&& chrs != null && chrs.length > 0) {
//			/*
//			 * 获得用户登录密码，并对该密码进行MD5加密
//			 * 从userToken中获取到的password是char数组类型，需要进行强制转换，转换为String
//			 * String password = new String(userToken.getPassword);
//			 * 利用MD5加密工具，对用户输入的密码进行加密，便于与数据库中的密码进行比较
//			 * password = EncryptionUtil.encrypt(password);
//			 * 将加密后的密码再重新放回到userToken中，
//			 * 由于password在userToken中是以字符数组形式存放，
//			 * 所以必须再将password重新转换成char数组，再重新放回到userToken中
//			 * userToken.setPassword(password.toCharArray());
//			 * 
//			 */
			userToken.setPassword(EncryptionUtil.encrypt( new String(userToken.getPassword() ) ).toCharArray() );
			//通过使用loginName查询用户信息
			try {
				//通过登录名获取用户的信息
				User user = userTransmission.getUserByLoginName(loginName);
				//判断是否获得用户信息
				if (user != null && ConstantsUtil.STATUS_YES.equals(user.getStatus().getStatusCode())) {
					
					//将正确的用户信息和密码交给Shiro进行判断
					/*
					 * shiro调用Realm的getAuthenticationInfo(token)
					 * 主要执行的操作：
					 * 	1、检查提交的进行认证的令牌信息
						2、根据令牌信息从数据源(通常为数据库)中获取用户信息
						3、对用户信息进行匹配验证。
						4、验证通过将返回一个封装了用户信息的AuthenticationInfo实例。
						5、验证失败则抛出AuthenticationException异常信息。
					 */
					
					//info是登录成功的标志位
					SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(
							user.getLoginName(),user.getPassword(),getName());
					//默认登录成功，绑定Session对象
					SecurityUtils.getSubject().getSession().setAttribute("user", user);
					System.out.println("认证成功！");
					return info;
				}else {
					throw new AuthenticationException("该用户无法登陆，请联系管理员");
				}
			} catch (Exception e) {
				throw new AuthenticationException("系统异常");
			}
		}else {
			throw new AuthenticationException("请填写用户名和密码");
		}
	}
}


















