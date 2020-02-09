package com.smartcollege.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smartcollege.dao.ProfessorRepository;
import com.smartcollege.models.Professor;

@Service
public class ProfessorService {

	@Autowired
	private ProfessorRepository profRepo;
	
	public Professor getProfessorById(int id)
	{
		return profRepo.findById(id).orElse(null);
	}
	
	public Collection<Professor> findAllProfessors()
	{
		List<Professor> professors = new ArrayList<Professor>();
		for(Professor professor :profRepo.findAll())
		{
			professors.add(professor);
		}
		return professors;
	}
	
	public void deleteProfessor(int id)
	{
		profRepo.deleteById(id);
	}
	
	public void saveUpdateOnProfessor(Professor professor)
	{
		profRepo.save(professor);
	}
	
	public void addProfessor(Professor professor)
	{
		profRepo.save(professor);
	}
	
	public Professor findProfessorByName(String name)
	{
		return profRepo.findByName(name);
	}
}
