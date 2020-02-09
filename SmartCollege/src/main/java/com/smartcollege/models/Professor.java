package com.smartcollege.models;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Table(name = "professor_tbl" )
@Entity
public class Professor implements Comparable<Professor>{
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column (name = "id_professor")
	private int id;
	
	@Column (name = "professor_name")
	private String name;
	
	@ManyToMany(mappedBy = "professors",fetch = FetchType.EAGER)
	private Set<Subject> subjects;
	
	@OneToOne
	@JoinColumn(name ="id_professor", referencedColumnName = "id_user")
    private User users;

	public Professor() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Professor(int id, String name, Set<Subject> subjects) {
		super();
		this.id = id;
		this.name = name;
		this.subjects = subjects;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set<Subject> getSubjects() {
		return subjects;
	}

	public void setSubjects(Set<Subject> subjects) {
		this.subjects = subjects;
	}

	@Override
	public int compareTo(Professor o) {
		if(getName().charAt(0) >o.getName().charAt(0))
		{
			return 1;
		}
		return getName().compareTo(o.getName());
	}

	
}
