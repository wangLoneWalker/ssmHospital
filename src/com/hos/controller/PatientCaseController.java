package com.hos.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hos.pojo.PatientCase;
import com.hos.service.PatientCaseService;
@Controller
@RequestMapping("")
public class PatientCaseController {
	@Autowired
	PatientCaseService patientCaseService;
	
	//跳转到添加页面
	@RequestMapping("addPatientCase")
	public Object addPatientCase(){
		return "addPatientCase";
	}
	
    //添加
	@RequestMapping("addCase")
	public Object addCase(PatientCase patientCase){
		patientCaseService.addCase(patientCase);
		return "redirect:/selectAllCase";
	}
	//根据id查询并跳转到修改页面
	//@PathVariable: url参数注解， 一般用于从url中获取参数
	//注意这里的参数名要和href传递过来的参数名一致
	@RequestMapping("editCase")
	public Object editCase(String c_pid,Model model){
	System.out.println(c_pid);
	PatientCase patientCase=patientCaseService.getCase(c_pid);
	model.addAttribute("pCase",patientCase);
	return "updateCase";
	}
	//修改
	@RequestMapping("updateCase")
	public Object updateCase(PatientCase patientCase){
		patientCaseService.updateCase(patientCase);
		return "redirect:/selectAllCase";
	}
	
	//删除
	@RequestMapping("delCase")
	public Object delCase(Integer id){
		patientCaseService.delCase(id);
		return "redirect:/selectAllCase";
	}
	//根据患者编号查询病历
	@RequestMapping("getCase")
	public Object getCase(String pid,Model model){
		PatientCase patientCase=patientCaseService.getCase(pid);
		System.out.println(patientCase);
		model.addAttribute("c", patientCase);
		return "showCaseInfo";
	}
	
	//查询所有
	@RequestMapping("selectAllCase")
	public Object selectAllCase(Model model){
		List<PatientCase> list=patientCaseService.selectAllCase();
		model.addAttribute("patientCase",list);
		return "patientCaseInfo";
	}
}
