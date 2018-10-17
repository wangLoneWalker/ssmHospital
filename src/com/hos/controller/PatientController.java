package com.hos.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hos.pojo.Patient;
import com.hos.service.PatientService;
@Controller
@RequestMapping("")
public class PatientController {
	@Autowired
   PatientService patientService;
	
	//跳转到添加基本信息页面
	@RequestMapping("addPat")
	public Object addPat(){
		return "addPatient";
	}
	//跳转到添加病历页面
	@RequestMapping("insertCase")
	public Object addCase(Integer id,Model model){
		Patient patient =  patientService.getPatient(id);
		model.addAttribute("pCase",patient);
		return "addCase";
	}
	//跳转到添加图像页面
	@RequestMapping("addIcon")
	public Object addIcon(Integer id,Model model){
		Patient patient =  patientService.getPatient(id);
		model.addAttribute("icon",patient);
		return "addIcon";
	}
	
	@RequestMapping("addPatient")
	public Object addPatient(Patient patient){
		patientService.addPatient(patient);
		return "redirect:/selectAllPatient";
	}
	//根据ID查询再跳转到修改页面
	@RequestMapping("editPatient")
	public Object editPatient(Integer id,Model model){
	Patient patient=patientService.getPatient(id);
	model.addAttribute("p",patient);
		return "updatePatient";
	}
	
	//修改
	@RequestMapping("updatePatient")
	public Object updatePatient(Patient patient){
		patientService.updatePatient(patient);
		return "redirect:/selectAllPatient";
	}
	//删除
	@RequestMapping("delPatient")
	public Object delPatient(Integer id){
		patientService.delPatient(id);
		return "redirect:/selectAllPatient";
	}
	//病历
	
	//影像
	
	//查询所有病人
	@RequestMapping("selectAllPatient")
	public  Object selectAllPatient(Model model){
		List<Patient> list=patientService.selectAllPatient();
		model.addAttribute("patient",list);
		return "patientInfo";
	}
	
}
