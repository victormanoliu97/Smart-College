package com.smartcollege.models;


import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.SequenceGenerator;

@Entity(name= "announcement_tbl")
public class Announcement {
	
	@SequenceGenerator(name="seq", initialValue=1, allocationSize=100)
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="seq")
	private int id;
	 
	@Column(name = "title")
	private String announcementTitle;
	
	@Column(name = "subtitle")
	private String announcementSubtitle;
	
	@Column(name= "photolink")
	private String photoLink;
	
	private Date date;
	
	@Column(name = "tag")
	private String tag;
	
	@Column(name = "text")
	private String announcementText;
	
	@Column(name = "available")
	private String available;
	
	public Announcement()
	{
		
	}
	
	public Announcement(String announcementTitle, String announcementSubtitle, String photoLink, Date date, String tag,
			String announcementText, String available) {
		super();
		this.announcementTitle = announcementTitle;
		this.announcementSubtitle = announcementSubtitle;
		this.photoLink = photoLink;
		this.date = date;
		this.tag = tag;
		this.announcementText = announcementText;
		this.available = available;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAnnouncementTitle() {
		return announcementTitle;
	}

	public void setAnnouncementTitle(String announcementTitle) {
		this.announcementTitle = announcementTitle;
	}

	public String getAnnouncementSubtitle() {
		return announcementSubtitle;
	}

	public void setAnnouncementSubtitle(String announcementSubtitle) {
		this.announcementSubtitle = announcementSubtitle;
	}

	public String getPhotoLink() {
		return photoLink;
	}

	public void setPhotoLink(String photoLink) {
		this.photoLink = photoLink;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	public String getAnnouncementText() {
		return announcementText;
	}

	public void setAnnouncementText(String announcementText) {
		this.announcementText = announcementText;
	}

	public String getAvailable() {
		return available;
	}

	public void setAvailable(String available) {
		this.available = available;
	}
	
	
	
}
