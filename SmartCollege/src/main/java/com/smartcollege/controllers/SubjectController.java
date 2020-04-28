package com.smartcollege.controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.smartcollege.models.Professor;
import com.smartcollege.models.Subject;
import com.smartcollege.service.ProfessorService;
import com.smartcollege.service.SubjectService;

@Controller
public class SubjectController {

	@Autowired
	private SubjectService subjectServ;
	
	@Autowired 
	private ProfessorService profServ;
	
	public String url;
	
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
		Set<Professor> professors = new HashSet<Professor>(profServ.findAllProfessors());
		professors.removeAll(subjectServ.findOneSubject(id).getProfessors());
		//req.setAttribute("professors", profServ.findAllProfessors());
		req.setAttribute("professors", professors);
		req.setAttribute("subject", subjectServ.findOneSubject(id));
		req.setAttribute("mode", "SUBJECT_VIEW");
		return "subject";
	}
	
	@GetMapping("/SmartCollege/FirstYear")
	public String getFirstYearSubjects(HttpServletRequest req)
	{
		req.setAttribute("subjectsFirst", subjectServ.findSubjectByYear(1));
		req.setAttribute("viewVar", "VIEWSUBJ");
		return "studentSubjectsView";
	}
	
	@GetMapping("/SmartCollege/SecondYear")
	public String getSecondYearSubjects(HttpServletRequest req)
	{
		req.setAttribute("subjectsFirst", subjectServ.findSubjectByYear(2));
		req.setAttribute("viewVar", "VIEWSUBJ");
		return "studentSubjectsView";
	}
	
	
	@GetMapping("/SmartCollege/ThirdYear")
	public String getThirdYearSubjects(HttpServletRequest req)
	{
		req.setAttribute("subjectsFirst", subjectServ.findSubjectByYear(3));
		req.setAttribute("viewVar", "VIEWSUBJ");
		return "studentSubjectsView";
	}
	
	@GetMapping("/SmartCollege/{subjectName}")
	public String getProfessorsForSubject(@RequestParam String id,HttpServletRequest req)
	{	
		List<Professor> listOfProfs = new ArrayList<>(subjectServ.findOneSubject(Integer.parseInt(id)).getProfessors());
		Collections.sort(listOfProfs);
		req.setAttribute("profsForSubject", listOfProfs);
		req.setAttribute("idSbj", id);
		req.setAttribute("viewVar", "VIEWPROF");
		return "studentSubjectsView";
	}
	
	
	@PostMapping("/SmartCollege/saveSubjectUpdate")
	public String saveUpdate(@ModelAttribute Subject subject,HttpServletRequest req) 
	{
		subjectServ.saveUpdate(subject);
		req.setAttribute("subjects", subjectServ.findAllSubjects());
		req.setAttribute("mode", "SUBJECTS_VIEW");
		return "subject";
	}
	
	@GetMapping("/SmartCollege/RemoveProfessor")
	public void removeProfesor(@RequestParam String id, @RequestParam String name, HttpServletRequest req,HttpServletResponse resp) throws IOException
	{	
		Professor ex = profServ.findProfessorByName(name);
		Subject sub = subjectServ.findOneSubject(Integer.parseInt(id));
		sub.getProfessors().remove(ex);
		subjectServ.saveUpdate(sub);
		url = req.getHeader("referer");
		resp.sendRedirect(url);
	}
	
	@GetMapping("/SmartCollge/AddProfessor")
	public void addProfessorSubj(@RequestParam String id,@RequestParam String name, HttpServletRequest req,HttpServletResponse resp) throws IOException
	{
		String s= req.getParameter("City");
		String s2= name;
		Professor ex = profServ.findProfessorByName(s);
		Subject sub = subjectServ.findOneSubject(Integer.parseInt(id));
		sub.getProfessors().add(ex);
		subjectServ.saveUpdate(sub);
		url = req.getHeader("referer");
		resp.sendRedirect(url);
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
