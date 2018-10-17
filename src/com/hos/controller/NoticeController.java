package com.hos.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hos.pojo.Notice;
import com.hos.service.NoticeService;

@Controller
public class NoticeController {
@Autowired
NoticeService noticeService;
//发布公告
@RequestMapping("notice")
public Object editNotice(String id,Model model){
	 // System.out.println(id);
	  model.addAttribute("id",id);
	  return "notice";
}
//保存公告
@RequestMapping("saveNotice")
public Object saveNotice(Notice notice){
	  noticeService.editNotice(notice);
	  return "redirect:/showNotice"; 
}
//显示公告列表
@RequestMapping("showNotice")
public Object showNotice(Model model){
	List<Notice> list=noticeService.showNotice();
//	for (int i = 0; i <list.size(); i++) {
//		Notice notice=list.get(i);
//		System.out.println(notice);
//	}
	model.addAttribute("notice",list);
	return "showNotice";
}
//删除公告
@RequestMapping("delNotice")
public Object delNotice(int id){
	noticeService.delNotice(id);
	return "showNotice";
}

}
