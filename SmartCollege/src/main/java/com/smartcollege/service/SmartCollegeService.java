package com.smartcollege.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smartcollege.dao.SmartCollegeRepository;
import com.smartcollege.models.Contact;


@Service
public class SmartCollegeService {
	
	@Autowired
	private SmartCollegeRepository repo;
	
	public Collection<Contact> findAllContacts() 
	{
		List<Contact> contacts = new ArrayList<Contact>();
		for(Contact contact : repo.findAll()){
			contacts.add(contact);
		}
		return contacts;
	}
	
	public void deleteContact(int id)
	{
		repo.deleteById(id);
	}
	
	public Contact findOneContact(int id)
	{
		return repo.findById(id).orElse(null);
	}
	
	public void saveUpdate(Contact contact)
	{
		repo.save(contact);
	}
	
	public void addContact(Contact contact)
	{
		repo.save(contact);
	}
}
