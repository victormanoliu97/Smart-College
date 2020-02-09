package com.smartcollege.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smartcollege.dao.UserRepository;
import com.smartcollege.models.User;

@Service
public class UserService {
      
	@Autowired
	private UserRepository userRepo;
	
	public Integer findUser(String username, String password)
	{   
		User result = userRepo.findByUsernameAndPassword(username, password).orElse(null);
		if (result == null) return null;
		return result.getUserId();
	}
	
	public User findOneUser(int id)
	{
		return userRepo.findById(id).orElse(null);
	}
	
	public void addUser(User user)
	{
		userRepo.save(user);
	}
	
}
