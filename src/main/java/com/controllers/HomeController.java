package com.controllers;

import java.util.Enumeration;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;


import com.to.Admin;
import com.to.User;
import com.to.Policy;
import com.dao.UserDao;
import com.dao.AdminDao;
import com.to.AdminMode;

@Controller
@EnableWebMvc
public class HomeController {
	@Autowired
	UserDao userDao;
	@Autowired
	AdminDao adminDao;
	
	@RequestMapping("/")
	public String showHome() {
		System.out.println("Home");
		return "home";
	}
	
	@RequestMapping("home")
	public String showHomePage() {
		System.out.println("Home");
		return "home";
	}
	
	@RequestMapping("userLogin")
	public String userLogin(Model model) {
		System.out.println("user Login");
		model.addAttribute("userCredCommand", new User());
		return "userLogin";
	}
	
	@RequestMapping("adminLogin")
	public String adminLogin(Model model) {
		System.out.println("admin Login");
		model.addAttribute("adminCredCommand", new Admin());
		return "adminLogin";
	}
	
	@RequestMapping(value = "NewAdminLogin",method = RequestMethod.POST)
	public String isValidAdmin(@Valid @ModelAttribute("adminCredCommand")Admin admin,BindingResult bindingResult,ModelMap map,HttpSession hsession,Model model) {
		if(bindingResult.hasErrors()) {
			return "adminLogin";
		}

		int id = adminDao.verifyAdminCredentials(admin);
		if(id==-1) {
			map.addAttribute("errorMessageAdmin", "Invalid login credentials");
			return "adminLogin";
		}
		else {
			hsession.setAttribute("adminId",id);
			adminDao.selectUser(hsession);
			model.addAttribute("adminSelectCommand", new AdminMode());
			return "adminHome";
		}
		
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "adminHome",method = RequestMethod.GET)
	public String adminLoginView(Model model,HttpSession hsession) {
		model.addAttribute("adminSelectCommand", new AdminMode());
		Enumeration<String> enumeration = hsession.getAttributeNames();
		  while (enumeration.hasMoreElements()) {
			  String nextElement = enumeration.nextElement();
		    if(nextElement != "adminId" &&  nextElement != "userListMap")hsession.removeAttribute(nextElement);
		  }
		return "adminHome";
	}
	
	@RequestMapping(value = "adminHome",method = RequestMethod.POST)
	public String adminLogin(@ModelAttribute("adminSelectCommand")AdminMode adminMod,HttpSession hsession) {
		hsession.setAttribute("userId", adminMod.getUserId());
		Policy pol = userDao.checkPolicy(hsession);
		if(pol!=null) {
			hsession.setAttribute("boughtPolicy", true);
			hsession.setAttribute("userPolicy", pol);
		}
		return "getStarted";
	}
	
	@RequestMapping(value = "userRegistration", method = RequestMethod.GET)
	public String showRegister(Model model) {
		System.out.println("user registration");
		model.addAttribute("userCommand", new User());
		return "userRegistration";
	}
	
	@RequestMapping(value = "registerUser",method = RequestMethod.POST)
	public String addUser(@Valid @ModelAttribute("userCommand")User user,BindingResult bindingResult,ModelMap map) {

		if(bindingResult.hasErrors()) {
			return "userRegistration";
		}
		map.addAttribute("user", user);
		int id = userDao.addUser(user);
		if(id==-1) {
			map.addAttribute("errorMessageRegister", "Username already taken");
			return "userRegistration";
		}
		System.out.println(id);
		map.addAttribute("successMessageRegister", "Success. You can login now");
		return "userRegistration";
	}
	
	@RequestMapping(value = "NewUserLogin",method = RequestMethod.POST)
	public String isValidUser(@Valid @ModelAttribute("userCredCommand")User user,BindingResult bindingResult,ModelMap map,HttpSession hsession) {
		if(bindingResult.hasErrors()) {
			return "userLogin";
		}
		int id = userDao.checkUserCred(user);
		if(id==-1) {
			map.addAttribute("errorMessage", "Invalid login credentials");
		}
		else {
			hsession.setAttribute("userId",id);
			Policy pol = userDao.checkPolicy(hsession);
			if(pol!=null) {
				hsession.setAttribute("boughtPolicy", true);
				hsession.setAttribute("userPolicy", pol);
			}
			return "getStarted";
		}
		return "userLogin";
	}
}
