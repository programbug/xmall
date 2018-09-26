package com.zhuxintao.xmall.dao;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

import com.zhuxintao.xmall.entity.User;

//PagingAndSortingRepository用于分页和排序功能的实现
//JpaSpecifcationExecutor用于条件查询(主要是针对一张表中的数据进行查询)
public interface UserDao extends PagingAndSortingRepository<User, Long>,JpaSpecificationExecutor<User>{
	@Query(value="from User u where u.loginName=:loginName")
	public User findUserByLoginName(@Param("loginName")String loginName) throws Exception;

}
