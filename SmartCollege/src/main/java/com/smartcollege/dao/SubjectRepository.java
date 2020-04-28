package com.smartcollege.dao;

import java.util.Set;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.smartcollege.models.Subject;


@Repository
public interface SubjectRepository extends CrudRepository<Subject, Integer >{

	public Set<Subject> findBysubjectYear(int subjectYear);
}
