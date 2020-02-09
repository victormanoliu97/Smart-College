package com.smartcollege.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.smartcollege.models.Professor;
import com.smartcollege.service.FileService;
import com.smartcollege.service.ProfessorService;

@Controller
public class ProfessorController {
	
	@Autowired
	private ProfessorService profServ;
	
	@Autowired
	private FileService fileServ;
	
	@GetMapping("/SmartCollege/ProfessorSubjects")
	public String getSubjectsForProf(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		session.getAttribute("userId");
		Professor prof = profServ.getProfessorById((int) session.getAttribute("userId"));
		request.setAttribute("prof", prof);
		return "professor";
	}
	
	@GetMapping("/SmartCollege/ViewSubject")
	public String viewSubject(@RequestParam int id,@RequestParam int user, HttpServletRequest req)
	{	
		req.setAttribute("content", fileServ.findFilesByIds(user, id));
		req.setAttribute("idSubject", id);
		return "file";
	}
	
	
	@GetMapping("/SmartCollege/Professors")
	public String getAllProfessor(HttpServletRequest req)
	{	
		req.setAttribute("professors", profServ.findAllProfessors());
	    req.setAttribute("mode", "PROFESSORS_VIEW");
		return "professor";
	}
	
	@GetMapping("/SmartCollege/updateProfessor")
	public String updateProfessor(@RequestParam int id, HttpServletRequest req)
	{
		req.setAttribute("professor", profServ.getProfessorById(id));
		req.setAttribute("mode", "PROFESSOR_VIEW");
		return "professor";
	}
	
	@PostMapping("/SmartCollege/saveProfessorUpdate")
	public String saveProfessorUpdate(@ModelAttribute Professor professor,HttpServletRequest req) 
	{
		profServ.saveUpdateOnProfessor(professor);
		req.setAttribute("professors", profServ.findAllProfessors());
		req.setAttribute("mode", "PROFESSORS_VIEW");
		return "professor";
	}
	
	@GetMapping("/SmartCollege/Professor/delete")
	public String deleteSubject(@RequestParam int id, HttpServletRequest req)
	{
		
		profServ.deleteProfessor(id);
		req.setAttribute("professors", profServ.findAllProfessors());
		req.setAttribute("mode", "PROFESSORS_VIEW");
		return "professor";
	}
	
	@GetMapping("/SmartCollege/NewProfessor")
	public String addProfessor(HttpServletRequest req)
	{
		req.setAttribute("mode", "NEWPROFESSOR_VIEW");
		return "professor";
	}
}
