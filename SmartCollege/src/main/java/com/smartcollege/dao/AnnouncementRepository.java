package com.smartcollege.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.smartcollege.models.Announcement;
import com.smartcollege.models.File;

@Repository
public interface AnnouncementRepository extends CrudRepository<Announcement,Integer>{
	public Announcement findById(int id);
}
