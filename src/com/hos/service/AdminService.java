package com.hos.service;

import java.util.List;

import com.hos.pojo.Admin;

public interface AdminService {
	//管理员登录
	public Admin login(String username,String password);
	//添加
		public void add(Admin admin);
		//修改
		public void update(Admin admin);
		//删除
		public void delete(Integer id);
		//根据id查看一个
		public Admin getAdmin(Integer id);
		//查询所有
		public List<Admin> selectAll();
		//总记录数
		public int count();
}
