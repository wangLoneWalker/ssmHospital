package com.hos.service;

import java.util.List;

import com.hos.pojo.Notice;

public interface NoticeService {
	//发布公告
	public void editNotice(Notice notice);
	//显示公告列表
	public List<Notice> showNotice();	
	//删除公告
	public void delNotice(int id);
}
