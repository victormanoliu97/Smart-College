package com.smartcollege.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "files_tbl")
public class File {
	
	@SequenceGenerator(name="seq", initialValue=1, allocationSize=100)
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="seq")
	private int id;
	
	@Column(name = "id_prof")
	private int idProf;
	
	@Column(name = "id_subject")
	private int idSubject;
	
	private Long size;
	
	private String name;
	
	private String title;
	
	private String subtitle;
	
	private String category;
	
	@Lob
	private byte[] data;
		
	public File() {
		super();
		// TODO Auto-generated constructor stub
	}

	public File(int idProf, int idSubject, Long size, String name, String title, String subtitle, String category,
			byte[] data) {
		super();
		this.idProf = idProf;
		this.idSubject = idSubject;
		this.size = size;
		this.name = name;
		this.title = title;
		this.subtitle = subtitle;
		this.category = category;
		this.data = data;
	}
	
	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getSubtitle() {
		return subtitle;
	}



	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle;
	}



	public int getIdProf() {
		return idProf;
	}

	public void setIdProf(int idProf) {
		this.idProf = idProf;
	}

	public int getIdSubject() {
		return idSubject;
	}

	public void setIdSubject(int idSubject) {
		this.idSubject = idSubject;
	}

	public Long getSize() {
		return size;
	}

	public void setSize(Long size) {
		this.size = size;
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

	public byte[] getData() {
		return data;
	}

	public void setData(byte[] data) {
		this.data = data;
	}
}
