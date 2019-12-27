package com.smartcollege.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name = "subject_tbl")
public class Subject {

	@Id
	@Column(name = "id_subject")
	private int idSubject;
	
	@Column(name = "subject_name")
	private String subjectName;
	
	@Column(name = "subject_year")
	private int subjectYear;
	
	@Column(name = "subject_semester")
	private int subjectSemester;

	public Subject() {
		super();
	}

	public Subject(int idSubject, String subjectName, int subjectYear, int subjectSemester) {
		super();
		this.idSubject = idSubject;
		this.subjectName = subjectName;
		this.subjectYear = subjectYear;
		this.subjectSemester = subjectSemester;
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
	
	
}
