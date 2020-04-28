package com.smartcollege.models;


import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;

@Entity(name = "subject_tbl")
public class Subject {

	@SequenceGenerator(name="seq", initialValue=1, allocationSize=100)
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="seq")
	@Column(name = "id_subject")
	private int idSubject;
	
	@Column(name = "subject_name")
	private String subjectName;
	
	@Column(name= "subject_description")
	private String subjectDescription;
	
	@Column(name = "subject_year")
	private int subjectYear;
	
	@Column(name = "subject_semester")
	private int subjectSemester;
	
	@ManyToMany
	private Set<Professor> professors;

	public Subject() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Subject(int idSubject, String subjectName, String subjectDescription, int subjectYear, int subjectSemester,
			Set<Professor> professors) {
		super();
		this.idSubject = idSubject;
		this.subjectName = subjectName;
		this.subjectDescription = subjectDescription;
		this.subjectYear = subjectYear;
		this.subjectSemester = subjectSemester;
		this.professors = professors;
	}

	public String getSubjectDescription() {
		return subjectDescription;
	}

	public void setSubjectDescription(String subjectDescription) {
		this.subjectDescription = subjectDescription;
	}



	public int getIdSubject() {
		return idSubject;
	}

	public void setIdSubject(int idSubject) {
		this.idSubject = idSubject;
	}

	public String getSubjectName() {
		return subjectName;
	}

	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

	public int getSubjectYear() {
		return subjectYear;
	}

	public void setSubjectYear(int subjectYear) {
		this.subjectYear = subjectYear;
	}

	public int getSubjectSemester() {
		return subjectSemester;
	}

	public void setSubjectSemester(int subjectSemester) {
		this.subjectSemester = subjectSemester;
	}

	public Set<Professor> getProfessors() {
		return professors;
	}

	public void setProfessors(Set<Professor> professors) {
		this.professors = professors;
	}
}