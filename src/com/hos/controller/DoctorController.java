package com.hos.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hos.pojo.Doctor;
import com.hos.service.DoctorService;

@Controller
@RequestMapping("")
public class DoctorController {
	@Autowired
	DoctorService doctorService;
	
	//跳转到添加页面
	@RequestMapping("addDoc")
	public Object add(){
		return "addDoctor";
	}
	//跳转到修改页面
	@RequestMapping("editDoctor")
	public Object edit(Integer id,Model model){
		Doctor doctor=doctorService.getDoctor(id);
		model.addAttribute("doctor",doctor);
		return "updateDoctor";
	}
	
	
//添加
	@RequestMapping("addDoctor")
	public Object addDoctor(Doctor doctor){
		doctorService.addDoctor(doctor);
		return "redirect:/selectAllDoctor";
	}
	
	//修改
	@RequestMapping("updateDoctor")
	public Object updateDoctor(Doctor doctor){
		doctorService.updateDoctor(doctor);
		return "redirect:/selectAllDoctor";
	}
	
	//删除
	@RequestMapping("delDoctor")
	public Object delDoctor(int id){
		doctorService.delDoctor(id);
		return "redirect:/selectAllDoctor";
	}
	
	//查询
	@RequestMapping("selectAllDoctor")
	public Object selectAllDoctor(Model model){
		List<Doctor> list=doctorService.selectAllDoctor();
		model.addAttribute("doctor",list);
		return "doctorInfo";
	}
	
	
	
}
