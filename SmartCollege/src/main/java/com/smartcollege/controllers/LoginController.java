package com.smartcollege.controllers;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.smartcollege.models.User;
import com.smartcollege.service.ProfessorService;
import com.smartcollege.service.UserService;

@Controller
public class LoginController {
	
	@Autowired
	private UserService userServ;
	
	@Autowired
	private ProfessorService profServ;
	
	@GetMapping("/SmartCollege/Loginn")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String username = request.getParameter("username");
		String password = request.getParameter("psw");
		
		if(userServ.findUser(username, password) == null)
		{
			response.sendRedirect("Login");
		}
		else if (userServ.findUser(username, password) != 0 )
		{	
			HttpSession session = request.getSession();
			session.setAttribute("userId", userServ.findUser(username,password));
			session.setAttribute("role", userServ.findOneUser(userServ.findUser(username,password)).getUserRole());
			if(userServ.findOneUser(userServ.findUser(username,password)).getUserRole().equals("ADMIN"))
			{
				session.setAttribute("username", userServ.findOneUser(userServ.findUser(username,password)).getUsername());
				response.sendRedirect("News");
			}
			else if(userServ.findOneUser(userServ.findUser(username,password)).getUserRole().equals("PROFESSOR"))
			{
				response.sendRedirect("News");
				session.setAttribute("username", profServ.getProfessorById(userServ.findUser(username,password)).getName());
				session.setAttribute("profsubjects", profServ.getProfessorById(userServ.findUser(username,password)).getSubjects());
			}
			else 
			{
				session.setAttribute("username", userServ.findOneUser(userServ.findUser(username,password)).getUsername());
				response.sendRedirect("News");
			}
		}
	}
	
	@GetMapping("/SmartCollege/Logout")
	public void logout(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		HttpSession session = request.getSession();
		session.removeAttribute("userId");
		session.removeAttribute("username");
		session.removeAttribute("role");
		session.invalidate();
		response.sendRedirect("News");
	}
	
	@GetMapping("/SmartCollege/ResetPassword")
	public String resetPassword(HttpServletRequest req)
	{   
		req.setAttribute("var", "ChangePassword");
		return "login";
	}
	
	@GetMapping("/SmartCollege/Reset")
	public String getCredentials(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		String username = request.getParameter("username");
		String password = request.getParameter("psw");
		String newPassword = request.getParameter("newPsw");
		
		if(userServ.findUser(username, password) == null)
		{	
			request.setAttribute("var", "fail");
			return "login";
		}
		else if(userServ.findUser(username, password) != 0)
		{
			User u = userServ.findOneUser(userServ.findUser(username,password));
			u.setPassword(newPassword);
			userServ.updateUser(u);
			request.setAttribute("var", "succes");
			return "login";
		}
		return "login";
	}
}
