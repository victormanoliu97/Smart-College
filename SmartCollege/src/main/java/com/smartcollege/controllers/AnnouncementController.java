package com.smartcollege.controllers;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.smartcollege.models.Announcement;
import com.smartcollege.models.Contact;
import com.smartcollege.service.AnnouncementService;

@Controller
public class AnnouncementController {

	@Autowired
	private AnnouncementService announcementService;
	
	
	@GetMapping("/SmartCollege/AddAnnouncement")
	public String addAnnouncement(HttpServletRequest req)
	{   
		return "announcement";
	}
	
	@GetMapping("/SmartCollege/News")
	public String bringNews(HttpServletRequest req)
	{
		req.setAttribute("announcements",announcementService.findAllAnnouncements());
		return "index";
	}
	
	@GetMapping("/SmartCollege/ViewAnnouncement")
	public String viewAnnouncement(@RequestParam int id, HttpServletRequest req)
	{
		req.setAttribute("ann", announcementService.findAnnouncement(id));
		return "viewAnnouncement";
	}
	
	@PostMapping("/SmartCollege/uploadAnnouncement")
	public String uploadAnnouncement(@ModelAttribute Announcement announcement,HttpServletRequest req)
	{
		announcementService.addAnnouncement(announcement);
		return "announcement";
	}
}
