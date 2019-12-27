package com.smartcollege.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.smartcollege.models.Contact;

@Repository
public interface SmartCollegeRepository extends CrudRepository<Contact, Integer > {

}
