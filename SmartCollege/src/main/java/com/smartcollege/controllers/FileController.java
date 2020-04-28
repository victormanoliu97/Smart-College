package com.smartcollege.controllers;
import java.io.BufferedOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Scanner;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.smartcollege.models.File;
import com.smartcollege.models.User;
import com.smartcollege.service.FileService;
import com.smartcollege.service.UserService;

@Controller
public class FileController {
	
	@Autowired
	private FileService fileServ;
	
	@Autowired
	private UserService userServ;
	
	@Autowired
	private JavaMailSender javaMailSender;
	
	String lala;
	
	@PostMapping("/uploadFile")
    public String uploadFile(@RequestParam("file") MultipartFile file,@RequestParam String id,@RequestParam String idd, HttpServletRequest request) throws IOException {
		
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		String category = request.getParameter("category");
    	fileServ.addFile(new File(Integer.parseInt(idd),Integer.parseInt(id),file.getSize(),file.getOriginalFilename(),title, description, category, file.getBytes()));
    	//fileServ.addFile(new File(Integer.parseInt(idd),Integer.parseInt(id),file.getSize(),file.getOriginalFilename(),file.getBytes()));
        return "home";
    }
	
	@PostMapping("/uploadInfo")
    public String uploadFile(@RequestParam String id,@RequestParam String idd, HttpServletRequest request) throws IOException {
		
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		String category = request.getParameter("category");
    	fileServ.addFile(new File(Integer.parseInt(idd),Integer.parseInt(id),null,null,title, description, category,null));
    	//fileServ.addFile(new File(Integer.parseInt(idd),Integer.parseInt(id),file.getSize(),file.getOriginalFilename(),file.getBytes()));
        return "home";
    }
	
	@GetMapping("/SmartCollege/DeleteFile")
	public void removeFile(@RequestParam int id,HttpServletRequest req,HttpServletResponse resp) throws IOException
	{	
		fileServ.removeFile(id);
		String lala = req.getHeader("referer");
		resp.sendRedirect(lala);
	}
	
	@GetMapping("/SmartCollege/updateItem")
	public String updateContact(@RequestParam int id, HttpServletRequest req) {
		req.setAttribute("item", fileServ.findOneFile(id));
		req.setAttribute("IDEEEU", fileServ.findOneFile(id).getIdSubject());
	    lala = req.getHeader("referer");
		req.setAttribute("mode", "UPDATE");
		return "addItemProfessor";
	}
	
	@PostMapping("/SmartCollege/saveItemUpdate")
	public void saveUpdate(@RequestParam("file") MultipartFile file,@RequestParam String id,@RequestParam String idd,HttpServletRequest request,HttpServletResponse resp) throws NumberFormatException, IOException {
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		String category = request.getParameter("category");
		fileServ.saveUpdate(new File(Integer.parseInt(idd),Integer.parseInt(id),file.getSize(),file.getOriginalFilename(),title, description, category, file.getBytes()));
		resp.sendRedirect(lala);
	}
	
	
	@GetMapping("/SmartCollege/AddCourse")
	public String addCourse(@RequestParam String id,HttpServletRequest request)
	{   
		HttpSession session = request.getSession();
		session.setAttribute("IDEEEU", id);
		session.setAttribute("mode", "course");
		return "addItemProfessor";
	}
	
	@GetMapping("/SmartCollege/Repartition")
	public String makeRepartition(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		session.setAttribute("mode", "Repartition");
		return "addItemProfessor";
	}
	
	@PostMapping("/SmartCollege/processCSV")
	public void processCSV(@RequestParam("file") MultipartFile file,HttpServletRequest req,HttpServletResponse resp) throws IOException
	{	
		java.io.File document = new java.io.File(file.getOriginalFilename());
		try {
			Scanner scanner = new Scanner(new java.io.File(document.getAbsolutePath()));
			while (scanner.hasNext()){
				String name = scanner.next();
				UUID uuid = UUID.randomUUID();
				String pass = uuid.toString().substring(0,8);
				SimpleMailMessage mail = new SimpleMailMessage();
				try {
				userServ.addUser(new User(name,pass));
				}
				catch (Exception e)
				{
					e.getStackTrace();
				}
				mail.setTo(name);
				mail.setFrom("SmartCollege@gmail.com");
				mail.setSubject("Your account has been created!");
				mail.setText("Your username is: " + name + " and the password is " + pass);
				
				javaMailSender.send(mail);
			}
			scanner.close();
		}catch (Exception e)
		{
			e.printStackTrace();
		}
		String lala = req.getHeader("referer");
		resp.sendRedirect(lala);
	}
	
	@GetMapping("/SmartCollege/AddInfo")
	public String addInfo(@RequestParam String id,HttpServletRequest request)
	{   
		HttpSession session = request.getSession();
		session.setAttribute("IDEEEU", id);
		session.setAttribute("mode", "info");
		return "addItemProfessor";
	}
	
	@GetMapping("/SmartCollege/ViewFile/{fileName}")
	@ResponseBody
	public void show(@PathVariable("fileName") String fileName, HttpServletResponse response)
	{
		  if (fileName.indexOf(".doc")>-1) response.setContentType("application/msword");
	      if (fileName.indexOf(".docx")>-1) response.setContentType("application/msword");
	      if (fileName.indexOf(".xls")>-1) response.setContentType("application/vnd.ms-excel");
	      if (fileName.indexOf(".csv")>-1) response.setContentType("application/vnd.ms-excel");
	      if (fileName.indexOf(".ppt")>-1) response.setContentType("application/ppt");
	      if (fileName.indexOf(".pdf")>-1) response.setContentType("application/pdf");
	      if (fileName.indexOf(".zip")>-1) response.setContentType("application/zip");
	      //response.setHeader("Content-Disposition", "attachment; filename=" +fileName);
	      response.setHeader("Content-Disposition", "inline; filename=" + "example.pdf");
	      response.setHeader("Content-Transfer-Encoding", "binary");
	      try {
	    	  BufferedOutputStream bos = new BufferedOutputStream(response.getOutputStream());
	    	  bos.write(fileServ.findFileByName(fileName).getData(),0, Math.toIntExact(fileServ.findFileByName(fileName).getSize()));
	    	  bos.close();
	    	  response.flushBuffer();
	      }
	      catch(IOException e) {
	    	  e.printStackTrace();
	    	  
	      }
	}
	
	@GetMapping("/SmartCollege/DownloadFile/{fileName}")
	@ResponseBody
	public void shoow(@PathVariable("fileName") String fileName, HttpServletResponse response)
	{
		  if (fileName.indexOf(".doc")>-1) response.setContentType("application/msword");
	      if (fileName.indexOf(".docx")>-1) response.setContentType("application/msword");
	      if (fileName.indexOf(".xls")>-1) response.setContentType("application/vnd.ms-excel");
	      if (fileName.indexOf(".csv")>-1) response.setContentType("application/vnd.ms-excel");
	      if (fileName.indexOf(".ppt")>-1) response.setContentType("application/ppt");
	      if (fileName.indexOf(".pdf")>-1) response.setContentType("application/pdf");
	      if (fileName.indexOf(".zip")>-1) response.setContentType("application/zip");
	      response.setHeader("Content-Disposition", "attachment; filename=" +fileName);
	      response.setHeader("Content-Transfer-Encoding", "binary");
	      try {
	    	  BufferedOutputStream bos = new BufferedOutputStream(response.getOutputStream());
	    	  bos.write(fileServ.findFileByName(fileName).getData(),0,Math.toIntExact(fileServ.findFileByName(fileName).getSize()));
	    	  bos.close();
	    	  response.flushBuffer();
	      }
	      catch(IOException e) {
	    	  e.printStackTrace();
	    	  
	      }
	}

}
