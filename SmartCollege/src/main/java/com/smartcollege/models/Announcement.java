package com.smartcollege.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;

import com.mysql.cj.jdbc.Blob;

@Entity(name= "announcement_tbl")
public class Announcement {
	
	@SequenceGenerator(name="seq", initialValue=1, allocationSize=100)
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="seq")
	private int idAnnouncement;
	 
	@Column(name = "title")
	private String announcementTitle;
	
	@Column(name = "text")
	private String announcementText;
	
	@Column(name = "available")
	private EnumType available;

	public int getIdAnnouncement() {
		return idAnnouncement;
	}
	
	public Announcement() {
		super();
	}

	public Announcement(int idAnnouncement, String announcementTitle, String announcementText, Blob announcementImage,
			EnumType available) {
		super();
		this.idAnnouncement = idAnnouncement;
		this.announcementTitle = announcementTitle;
		this.announcementText = announcementText;
		this.available = available;
	}

	public void setIdAnnouncement(int idAnnouncement) {
		this.idAnnouncement = idAnnouncement;
	}

	public String getAnnouncementTitle() {
		return announcementTitle;
	}

	public void setAnnouncementTitle(String announcementTitle) {
		this.announcementTitle = announcementTitle;
	}

	public String getAnnouncementText() {
		return announcementText;
	}

	public void setAnnouncementText(String announcementText) {
		this.announcementText = announcementText;
	}

	public EnumType getAvailable() {
		return available;
	}

	public void setAvailable(EnumType available) {
		this.available = available;
	}
	
	
	
}
