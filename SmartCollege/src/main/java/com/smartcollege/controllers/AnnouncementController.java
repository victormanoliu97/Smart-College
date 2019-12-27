package com.smartcollege.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.smartcollege.service.SmartCollegeAnnouncementService;

@Controller
public class AnnouncementController {

	@Autowired
	private SmartCollegeAnnouncementService announcementService;
	
	@GetMapping("/SmartCollege/Home")
	public String init()
	{
	  return "index";
	}
}
