package com.zhuxintao.xmall.service.impl;

import javax.annotation.Resource;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import javax.transaction.Transactional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import com.zhuxintao.xmall.dao.RoleDao;
import com.zhuxintao.xmall.entity.Role;
import com.zhuxintao.xmall.entity.XMallPage;
import com.zhuxintao.xmall.service.RoleService;

@Service("roleService")
@Transactional
public class RoleServiceImpl implements RoleService{
	@Resource(name="roleDao")
	private RoleDao roleDao;

	public XMallPage<Role> getRoleListByPage(
			Integer pageNum, Integer pageSize, String roleName) throws Exception {
		XMallPage<Role> xmallPage = new XMallPage<Role>();
		//设定排序字段,采用roleId进行排序
		Sort sort = new Sort(Direction.ASC, "roleId");
		//设定分页对象，pageNum的下标是从0开始的
		Pageable pageable = PageRequest.of(pageNum - 1,pageSize,sort);
		//防止原有的page中存在用户或其他所定义的信息
		Page<Role> page = null;
		//根据是否携带查询条件，判断是否存在模糊查询
		if (roleName == null) {
			//没有携带查询条件，不用进行模糊查询，通过roleDao直接进行查询，获得所有的查询结果
			page = roleDao.findAll(pageable);
		}else {
			//Criteria是Hibernate的查询方式，SpringDataJPA也提供了相似的分页查询
			//继承于JpaSpecificationExecutor接口
			
			//CriteriaBuilder接口中提供了许多方法：
			//Equal--var predict:predicate = criteriaBuilder.equal(userName,name)
			//Like--var predict:Predicate = criteriaBuilder.like(userName,"%${name}%")
			
			//携带有查询条件,进行模糊查询c
			page = roleDao.findAll(new Specification<Role>() {
				public Predicate toPredicate(Root<Role> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
					//开始进行设定模糊查询
					//root["name"]:root是当前查询的表名称，name是root实体中的一个属性名
					
					//username为模糊查询的筛选的值
					/*
					 * var p1 = cb.like(root.get("username"),"%" + username + "%");
					 * queryList.add(p1);
					 * 
					 */
					Predicate predicate = cb.like(root.get("roleName"),"%"+ roleName +"%");
					return query.where(predicate).getRestriction();
				}
			},pageable);
		}
		
		//将page对象中的数据传入XMallPage中
		xmallPage = xmallPage.parseToXMallPage(xmallPage, page);
		return xmallPage;
	}

}














