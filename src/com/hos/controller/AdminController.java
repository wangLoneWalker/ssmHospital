package com.hos.controller;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hos.pojo.Admin;
import com.hos.pojo.Page;
import com.hos.service.AdminService;

@Controller
@RequestMapping("")
public class AdminController{
	@Autowired
	AdminService adminService;
	//没有默认值，如果不配置method，则以任何请求形式
	@RequestMapping(value="getLogin")
	public Object Login(Admin admin,Model model,HttpSession session){
		admin=adminService.login(admin.getA_name(),admin.getA_word());
	if (admin!=null) {
		model.addAttribute(admin);
		return "index";
	}else {
		return "redirect:/login.jsp";
	}
	}
	
	//跳转到主页面
	@RequestMapping("ToIndex")
	public Object toIndex(){
		return "index";
	}
	
	//注销登录
	@RequestMapping("loginout")
	public Object loginOut(HttpSession session){
		//通过session.invalidate()来注销当前的session
		session.invalidate();
		//重定向到登录页面
		return "redirect:/login.jsp";
	}
	
	//跳转到注册管理员界面
	@RequestMapping("register")
	public Object register(){
		return "register";
	}
	
	
	@RequestMapping(value="addAdmin")
 public Object addAdmin(Admin admin){
	   adminService.add(admin);
	   //ModelAndView view=new ModelAndView("redirect:/listAdmin");
	   //return view;
		return "redirect:/listAdmin";
 }
	//根据id查询信息
	//跳转到修改管理员信息页面
	@RequestMapping("editAdmin")
	public Object getAdmin(Integer id,Model model){
	 Admin admin=adminService.getAdmin(id);
	 model.addAttribute("admin",admin);
	 return "updateAdmin";
	}
	
  @RequestMapping("updateAdmin")
 public ModelAndView updateAdmin(Admin admin){
	 adminService.update(admin);
	 ModelAndView view=new ModelAndView("redirect:/listAdmin");
	 return view;
 }
  @RequestMapping("deleteAdmin")
  public ModelAndView deleteAdmin(int id){
	  adminService.delete(id);
	  ModelAndView view=new ModelAndView("redirect:/listAdmin");
	  return view;
  }
  @RequestMapping("listAdmin")
  public Object selectAllAdmin(Page page,Model model){
//	  ModelAndView view =new ModelAndView();
//	   List<Admin> list=  adminService.selectAll();
//	   view.addObject("adminlist",list);
//	   view.setViewName("adminInfo");
	  PageHelper.offsetPage(page.getStart(),5);
	  List<Admin> list=adminService.selectAll();
	  int total=(int)new PageInfo<>(list).getTotal();
	  page.caculateLast(total);
	  model.addAttribute("admin",list);
	   return "adminInfo";
  }
}
