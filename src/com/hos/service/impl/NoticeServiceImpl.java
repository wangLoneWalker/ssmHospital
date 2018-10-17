package com.hos.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hos.mapper.NoticeMapper;
import com.hos.pojo.Notice;
import com.hos.service.NoticeService;

@Service
public class NoticeServiceImpl implements NoticeService {
    @Autowired
	NoticeMapper noticeMapper;
	@Override
	public void editNotice(Notice notice) {
			noticeMapper.editNotice(notice);
	}

	@Override
	public List<Notice> showNotice() {
		List<Notice> list=noticeMapper.showNotice();
		System.out.println(list);
		return noticeMapper.showNotice();
	}

	@Override
	public void delNotice(int id) {
		noticeMapper.delNotice(id);
		
	}

}
