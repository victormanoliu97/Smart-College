package com.smartcollege.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smartcollege.dao.SubjectRepository;
import com.smartcollege.models.Contact;
import com.smartcollege.models.Subject;

@Service
public class SubjectService {
	
	@Autowired
	private SubjectRepository subjectRepo;
	
	public Collection<Subject> findAllSubjects() 
	{
		List<Subject> subjects = new ArrayList<Subject>();
		for(Subject subject : subjectRepo.findAll()){
			subjects.add(subject);
		}
		return subjects;
	}
	
	public void deleteSubject(int id)
	{
		subjectRepo.deleteById(id);
	}
	
	public Subject findOneSubject(int id)
	{
		return subjectRepo.findById(id).orElse(null);
	}
	
	public void saveUpdate(Subject subject)
	{
		subjectRepo.save(subject);
	}
	
	public void addContact(Subject subject)
	{
		subjectRepo.save(subject);
	}
	
}
