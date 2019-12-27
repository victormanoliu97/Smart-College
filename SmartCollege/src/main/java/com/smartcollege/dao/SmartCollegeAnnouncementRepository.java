package com.smartcollege.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.smartcollege.models.Announcement;

@Repository
public interface SmartCollegeAnnouncementRepository extends CrudRepository<Announcement,Integer>{

}
