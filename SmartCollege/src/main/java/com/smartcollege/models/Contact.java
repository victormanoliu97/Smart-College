package com.smartcollege.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;


@Entity(name = "contact_tbl")
public class Contact {
	
	
	@SequenceGenerator(name="seq", initialValue=1, allocationSize=100)
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="seq")
	private int id;
	
	@Column(name = "name")
	private String profesorName;
	
	@Column(name = "email")
	private String profesorEmail;
	
	@Column(name = "subjects")
	private String profesorSubjects;
	
	@Column(name = "office")
	private String profesorOffice;
	
	@Column(name = "status")
	private String profesorStatus;

	
	public Contact(){
		
	}

	public Contact(int i, String string, String string2, String string3, String string4, String string5) {
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getProfesorName() {
		return profesorName;
	}

	public void setProfesorName(String profesorName) {
		this.profesorName = profesorName;
	}

	public String getProfesorEmail() {
		return profesorEmail;
	}

	public void setProfesorEmail(String profesorEmail) {
		this.profesorEmail = profesorEmail;
	}

	public String getProfesorSubjects() {
		return profesorSubjects;
	}

	public void setProfesorSubjects(String profesorSubjects) {
		this.profesorSubjects = profesorSubjects;
	}

	public String getProfesorOffice() {
		return profesorOffice;
	}

	public void setProfesorOffice(String profesorOffice) {
		this.profesorOffice = profesorOffice;
	}

	public String getProfesorStatus() {
		return profesorStatus;
	}

	public void setProfesorStatus(String profesorStatus) {
		this.profesorStatus = profesorStatus;
	}
}
