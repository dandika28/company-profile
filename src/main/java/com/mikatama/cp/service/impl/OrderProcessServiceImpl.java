package com.mikatama.cp.service.impl;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.mikatama.cp.bean.OrderProcess;
import com.mikatama.cp.dao.OrderProcessDao;
import com.mikatama.cp.service.OrderProcessService;

@Service
public class OrderProcessServiceImpl implements OrderProcessService {

	@Autowired
	OrderProcessDao orderProcessDao;
	
	@Override
	public boolean insertOrder(OrderProcess orderProcess){
		boolean success = false;
		try {
			String pathLocation = "src/main/resources/static/assets/img/order/";
			MultipartFile file = orderProcess.getFile();
			
			boolean uploadImageSuccess = false;
			String latestId = orderProcessDao.getLatestId();
			String imageName = latestId + "_" + file.getOriginalFilename();
	    	if(!file.isEmpty()){
	    		try {
					byte[] bytes = file.getBytes();
					Path path = Paths.get(pathLocation + imageName);
					Files.write(path,bytes);
					
					uploadImageSuccess=true;
				} catch (IOException e) {
					e.printStackTrace();
				}
	    	}
			
	    	if(uploadImageSuccess=true){
	    		orderProcess.setImageName(imageName);
	    		orderProcessDao.insertOrder(orderProcess);
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
	public List<OrderProcess> getOrderProcess(){
		return orderProcessDao.getOrder();
	}
	
	@Override
	public String getLatestId(){
		return orderProcessDao.getLatestId();
	}
}
