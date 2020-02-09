package com.smartcollege.dao;

import java.util.Collection;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.smartcollege.models.File;

@Repository
public interface FileRepository extends CrudRepository<File, Integer>{
		
	public File findByName(String name);
	public Collection<File> findByIdProfAndIdSubject(int idProf, int idSubject);
}