package com.smartcollege.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.smartcollege.models.Contact;
import com.smartcollege.models.Subject;
import com.smartcollege.service.SubjectService;

@Controller
public class SubjectController {

	@Autowired
	private SubjectService subjectServ;
	
	@GetMapping("/SmartCollege/Subject")
	public String getAllSubjects(HttpServletRequest req)
	{
		req.setAttribute("subjects", subjectServ.findAllSubjects());
		req.setAttribute("mode", "SUBJECTS_VIEW");
		return "subject";
	}
	
	@GetMapping("/SmartCollege/updateSubject")
	public String updateSubject(@RequestParam int id, HttpServletRequest req)
	{
		req.setAttribute("subject", subjectServ.findOneSubject(id));
		req.setAttribute("mode", "SUBJECT_VIEW");
		return "subject";
	}
	
	@PostMapping("/SmartCollege/saveSubjectUpdate")
	public String saveUpdate(@ModelAttribute Subject subject,HttpServletRequest req) 
	{
		subjectServ.saveUpdate(subject);
		req.setAttribute("subjects", subjectServ.findAllSubjects());
		req.setAttribute("mode", "SUBJECTS_VIEW");
		return "subject";
	}
	
	@GetMapping("/SmartCollege/Subject/delete")
	public String deleteSubject(@RequestParam int id, HttpServletRequest req)
	{
		
		subjectServ.deleteSubject(id);
		req.setAttribute("subjects", subjectServ.findAllSubjects());
		req.setAttribute("mode", "SUBJECTS_VIEW");
		return "subject";
		
	}
	
	@GetMapping("/SmartCollege/NewSubject")
	public String addSubject(HttpServletRequest req)
	{
		req.setAttribute("mode", "NEWSUBJECT_VIEW");
		return "subject";
	}
}
