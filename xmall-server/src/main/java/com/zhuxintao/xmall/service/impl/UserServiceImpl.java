package com.zhuxintao.xmall.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

import com.zhuxintao.xmall.dao.UserDao;
import com.zhuxintao.xmall.entity.User;
import com.zhuxintao.xmall.service.UserService;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService{
	@Resource(name="userDao")
	private UserDao userDao;
	
	public User getUserByLoginName(
			String loginName) throws Exception {
		User user = userDao.findUserByLoginName(loginName);
		return user;
	}

	//分页查询的条件：pageNum--当前第几页  pageSize--每页显示数量   queryParams--查询所需条件
	public Map<String, Object> getUserListByPage(Integer pageNum, Integer pageSize, String username) throws Exception {
		Map<String, Object> resultMap = new HashMap<String,Object>();
		Sort sort = new Sort(Direction.ASC, "userId");
		//PagingAndSortingRepository提供的findAll方法查询
		//SpringDataJPA的Repository的衍生查询
		//Pageable是一个接口，他的实现类是PageRequest
		Pageable pageable = PageRequest.of(pageNum + 1, pageSize, sort);
		Page<User> page = null;
		if (username == null) {
			page = userDao.findAll(pageable);
		} else {
			page = userDao.findAll(new Specification<User>() {
				//Criteria是Hibernate的查询方式，SpringDataJPA也提供了相似的分页查询
				//继承于JpaSpecificationExecutor接口
				
				//CriteriaBuilder接口中提供了许多方法：
				//Equal--var predict:predicate = criteriaBuilder.equal(userName,name)
				//Like--var predict:Predicate = criteriaBuilder.like(userName,"%${name}%")
				//参数一：Path类型，参数二：查询的条件------若该参数值符合查询的条件，则会被筛选出来。
				public Predicate toPredicate(
							Root<User> root,CriteriaQuery<?> query,CriteriaBuilder cb) {
					List<Predicate> queryList = new ArrayList<Predicate>();
					//开始进行设定模糊查询
					//root["name"]:root是当前查询的表名称，name是root实体中的一个属性名
					
					//username为模糊查询的筛选的值
					/*
					 * var p1 = cb.like(root.get("username"),"%" + username + "%");
					 * queryList.add(p1);
					 * 
					 */
					queryList.add(cb.like(root.get("username"),"%" + username + "%"));
					Predicate[] predicates = new Predicate[queryList.size()];
					return query.where(queryList.toArray(predicates)).getRestriction();
				}
			},pageable);
		}
		resultMap.put("list",page.getContent());
		resultMap.put("pageNum", pageNum);
		resultMap.put("pageSize", pageSize);
		resultMap.put("totalCount", page.getTotalElements());
		resultMap.put("totalPage", page.getTotalPages());
		return resultMap;
	}

	
	

}
