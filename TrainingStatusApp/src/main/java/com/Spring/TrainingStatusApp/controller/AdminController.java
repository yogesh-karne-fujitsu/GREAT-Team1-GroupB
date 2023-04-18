package com.Spring.TrainingStatusApp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Spring.TrainingStatusApp.bean.AdminLogin;

@Controller
public class AdminController {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	@RequestMapping(value = "/Adminlogin", method = RequestMethod.POST)
	public String login(@ModelAttribute("adminlogin") AdminLogin adminlogin, ModelMap model) 
	{
	String query="SELECT * FROM tblapproverlogin WHERE a_name=? AND a_pass=?";
	List<AdminLogin> adminlogins=jdbcTemplate.query(query, new Object[] {adminlogin.getAdminuserId(),adminlogin.getAdminpassword()},new BeanPropertyRowMapper<>(AdminLogin.class));

    if (!adminlogins.isEmpty()) {
	System.out.println("Accessed admin login page successfully");
	return "adminfilter";
	} else {
    model.put("errorMsg","Please Provide correct crendentials");
	System.out.println("invalid credentials proceeding back to login page");
	return "login";
	
		}
   	
	}
	
	@RequestMapping(value = "/logoutToAdmin", method = RequestMethod.GET)
	public String adminpage1() {
		System.out.println("logged out from admin page");
		return "login";
	}
}
