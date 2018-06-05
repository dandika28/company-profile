package com.mikatama.cp.service.impl;

import com.mikatama.cp.bean.OurCulture;
import com.mikatama.cp.dao.OurCultureDao;
import com.mikatama.cp.service.OurCultureService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

@Service
public class OurCultureServiceImpl implements OurCultureService {
	
	@Autowired
	OurCultureDao ourCultureDao;
	
	@Override
	public List<OurCulture> getContentCulture(){
		return ourCultureDao.getContentCulture();
	}
	
	@Override
	public String getLatestId(){
		return ourCultureDao.getLatestId();
	}
	
	@Override
	public boolean insertContentCulture(OurCulture culture){
		boolean success = false;
		try {
			OurCulture ourCulture = new OurCulture();
			ourCulture.setId(culture.getId());
			ourCulture.setTitle(culture.getTitle());
			ourCulture.setContent(culture.getContent());
			ourCulture.setImage(culture.getMultipartFile().getOriginalFilename());
			
			String pathLocation = "src/main/resources/static/assets/img/page_culture/";
			MultipartFile file = culture.getMultipartFile();
			
			boolean uploadImageSuccess = false;
	    	if(!file.isEmpty()){
	    		try {
					byte[] bytes = file.getBytes();
					Path path = Paths.get(pathLocation + file.getOriginalFilename());
					Files.write(path,bytes);
					
					uploadImageSuccess=true;
				} catch (IOException e) {
					e.printStackTrace();
				}
	    	}
			
	    	if(uploadImageSuccess=true){
	    		ourCultureDao.insertContent(ourCulture);
	    		success = true;
	    	}else{
	    		success = false;
	    	}
		} catch (Exception e) {
			e.printStackTrace();
			success = false;
		}
		return success;
	}
	
	@Override
	public OurCulture getContentCultureById(int id){
		return ourCultureDao.getContentCultureById(id);
	}
	
	@Override
	public void updateImageContentCultureById(int id, String imageName){
		ourCultureDao.updateImageContentCultureById(id, imageName);
	}
	
	@Override
	public void updateContentCulture(OurCulture culture){
		OurCulture cultureTemp = new OurCulture();
		cultureTemp.setId(culture.getId());
		cultureTemp.setTitle(culture.getTitle());
		ourCultureDao.updateContentCulture(culture);
	}
	
	@Override
	public void deleteContentCultureById(int id){
		ourCultureDao.deleteContentCultureById(id);
	}
}
