package com.zhuxintao.xmall.entity;
/*
 * 进行分页查询的相关条件，对其进行封装，与数据库中的数据表无关，只用于分页查询
 */
import java.io.Serializable;
import java.util.List;

import org.springframework.data.domain.Page;

public class XMallPage<T> implements Serializable {
	private static final long serialVersionUID = 1L;
	private Integer pageNum;		//当前页数
	private Integer pageSize;		//每页的大小
	private List<T> list;			//进行分页查询的条件
	private Integer totalPage;		//进行分页查询的总页数
	private Integer totalCount;		//进行分页查询的总信息数量
	
	
	public Integer getPageNum() {
		return pageNum;
	}
	public void setPageNum(Integer pageNum) {
		this.pageNum = pageNum;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public List<T> getList() {
		return list;
	}
	public void setList(List<T> list) {
		this.list = list;
	}
	public Integer getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}
	public Integer getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(Integer totalCount) {
		this.totalCount = totalCount;
	}
	
	
	//对分页查询的条件进行封装
	public XMallPage<Role> parseToXMallPage(
				XMallPage<Role> xmallPage,Page<Role> page){
		//封装当前的页码
		xmallPage.setPageNum(page.getNumber());
		xmallPage.setPageSize(page.getSize());
		xmallPage.setList(page.getContent());
		xmallPage.setTotalCount(page.getNumberOfElements());
		xmallPage.setTotalPage(page.getTotalPages());
		return xmallPage;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
