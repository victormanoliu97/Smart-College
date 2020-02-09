package com.smartcollege.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.smartcollege.models.Contact;
import com.smartcollege.service.SmartCollegeService;

@Controller
public class MainController {

	@Autowired
	private SmartCollegeService serv;

	
	@GetMapping("/SmartCollege/Home") 
	public String lalal() { 
		return "home"; 
	}
	 

	@GetMapping("/SmartCollege/Login")
	public String login() {
		return "login";
	}

	@GetMapping("/SmartCollege/AboutUs")
	public String aboutUs()
	{
	    return "aboutUs";
	}
	/*
	 * @GetMapping("/SmartCollege/HomeAdmin") public String homeAdmin() { return
	 * "homeAdmin"; }
	 */

	@GetMapping("/SmartCollege/Contact")
	public String init(HttpServletRequest req) {
		req.setAttribute("contacts", serv.findAllContacts());
		req.setAttribute("mode", "CONTACTS_VIEW");
		return "contact";
	}

	@GetMapping("/SmartCollege/updateContact")
	public String updateContact(@RequestParam int id, HttpServletRequest req) {
		req.setAttribute("contact", serv.findOneContact(id));
		req.setAttribute("mode", "CONTACT_VIEW");
		return "contact";
	}

	@PostMapping("/SmartCollege/saveUpdate")
	public String saveUpdate(@ModelAttribute Contact contact, HttpServletRequest req) {
		serv.saveUpdate(contact);
		req.setAttribute("contacts", serv.findAllContacts());
		req.setAttribute("mode", "CONTACTS_VIEW");
		return "contact";
	}

	@GetMapping("/SmartCollege/Contact/delete")
	public String deleteContact(@RequestParam int id, HttpServletRequest req) {

		serv.deleteContact(id);
		req.setAttribute("contacts", serv.findAllContacts());
		req.setAttribute("mode", "CONTACTS_VIEW");
		return "contact";
	}

	@GetMapping("/SmartCollege/NewContact")
	public String addContact(HttpServletRequest req) {
		req.setAttribute("mode", "NEWCONTACT_VIEW");
		return "contact";
	}

}
