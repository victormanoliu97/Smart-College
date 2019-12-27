package com.smartcollege.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smartcollege.dao.SmartCollegeAnnouncementRepository;
import com.smartcollege.models.Announcement;

@Service
public class SmartCollegeAnnouncementService {

	@Autowired
	private SmartCollegeAnnouncementRepository announcementRepo;
	
	public Collection<Announcement> findAllAnnouncements()
	{
		List <Announcement> announcements = new ArrayList<Announcement>();
		for(Announcement announcement : announcementRepo.findAll()){
			announcements.add(announcement);
		}
		return announcements;
	}
}
