package com.smartcollege.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.smartcollege.models.Professor;

@Repository
public interface ProfessorRepository extends CrudRepository<Professor, Integer >{
	
	public Professor findByName(String name);
	
}
