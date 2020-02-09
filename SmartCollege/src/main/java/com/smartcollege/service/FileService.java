package com.smartcollege.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smartcollege.dao.FileRepository;
import com.smartcollege.models.Contact;
import com.smartcollege.models.File;

@Service
public class FileService {
	
	@Autowired
	private FileRepository fileRepo;
	
	public void addFile(File file)
	{	
		fileRepo.save(file);
	}
	
	public void removeFile(int id)
	{
		fileRepo.deleteById(id);
	}
	
	public Collection<File> findAllFiles() 
	{
		List<File> files = new ArrayList<File>();
		for(File file : fileRepo.findAll()){
			files.add(file);
		}
		return files;
	}
	
	public File findOneFile(int id)
	{
		return fileRepo.findById(id).orElse(null);
	}
	
	public Collection<File> findFilesByIds(int idProf, int idSubject) 
	{
		List<File> files = new ArrayList<File>();
		for(File file : fileRepo.findByIdProfAndIdSubject(idProf, idSubject)){
			files.add(file);
		}
		return files;
	}
	
	public File findFileByName(String name)
	{
		return fileRepo.findByName(name);
	}
	
	public void saveUpdate(File file)
	{
		fileRepo.save(file);
	}
}
