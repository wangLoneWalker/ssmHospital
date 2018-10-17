package com.hos.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.hos.pojo.PatientIcon;
import com.hos.service.PatientIconService;

@Controller
@RequestMapping("")
public class PatientIconController {
	@Autowired
	PatientIconService patientIconService;
//添加
	@RequestMapping("insertIcon")
	public Object insertIcon(PatientIcon patientIcon,MultipartFile patient_pic,HttpServletRequest request) throws IllegalStateException, IOException{
		//request.getSession().getServletContext() 
		//获取的是Servlet容器对象，相当于tomcat容器了。getRealPath("/") 获取实际路径
		String path= request.getServletContext().getRealPath("upload");
		//获取上传的文件名
		 String pic_name=patient_pic.getOriginalFilename();
		 //
		 String newname=UUID.randomUUID().toString()+pic_name.substring(pic_name.lastIndexOf("."));
		 File picFile=new File(path,newname);
			if(!picFile.exists()){
				picFile.mkdirs();
			}
			//transferTo（dest）方法将上传文件写到服务器上指定的文件
			patient_pic.transferTo(picFile);
			patientIcon.setPic(newname);
			System.out.println(patientIcon);
		patientIconService.addIcon(patientIcon);
		return "redirect:selectAllIcon";
	}
	//跳转到修改页面
	public Object editIcon(String i_pid,Model model){
		PatientIcon patientIcon=patientIconService.getIcon(i_pid);
		model.addAttribute("icon",patientIcon);
		return "updateIcon";
	}
	
	//修改
	@RequestMapping("updateIcon")
	public Object updateIcon(PatientIcon patientIcon){
		patientIconService.updateIcon(patientIcon);
		return "redirect:/selectAllIcon";
	}
	//删除
	@RequestMapping("delIcon")
	public Object delIcon(String pid){
		patientIconService.delIcon(pid);
		return "redirect:/selectAllIcon";
	}
	//查找一个
	@RequestMapping("getIcon")
	public Object getIcon(String pid,Model model){
	PatientIcon patientIcon=patientIconService.getIcon(pid);
     model.addAttribute("icon",patientIcon);
     return "showIconInfo";
	}
	
	//显示所有
	@RequestMapping("selectAllIcon")
	public Object selectAllIcon(Model model){
		List<PatientIcon> list=patientIconService.selectAllIcon();
		model.addAttribute("icons",list);
		return "patientIconInfo";
	}
	
}
