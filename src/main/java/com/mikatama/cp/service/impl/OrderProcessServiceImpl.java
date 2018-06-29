package com.mikatama.cp.service.impl;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.mikatama.cp.bean.OrderProduct;
import com.mikatama.cp.dao.OrderProcessDao;
import com.mikatama.cp.service.OrderProcessService;

@Service
public class OrderProcessServiceImpl implements OrderProcessService {

	@Autowired
	OrderProcessDao orderProcessDao;
	
	@Value("${path.location.image.order}")
	private String UPLOADED_FOLDER;
	
	@Override
	public boolean insertOrder(OrderProduct orderProcess){
		boolean success = false;
		try {
			String pathLocation = UPLOADED_FOLDER;
			MultipartFile file = orderProcess.getFile();
			
			boolean uploadImageSuccess = false;
			String latestId = orderProcessDao.getLatestId();
			String imageName = latestId + "_" + file.getOriginalFilename();
	    	if(!file.isEmpty()){
	    		try {
					byte[] bytes = file.getBytes();
					Path path = Paths.get(pathLocation + imageName);
					System.out.println("path : " + path);
					Files.write(path,bytes);
					
					uploadImageSuccess=true;
				} catch (IOException e) {
					e.printStackTrace();
				}
	    	}
			System.out.println("upload Image Success ? " + uploadImageSuccess);
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
	public List<OrderProduct> getOrderProcess(){
		return orderProcessDao.getOrder();
	}
	
	@Override
	public boolean updateOrderStatusById(int status, int id){
		boolean success = false;
		try {
			orderProcessDao.updateOrderStatusById(status, id);
			success = true;
		} catch (Exception e) {
			e.printStackTrace();
			success = false;
		}
		
		return success;
	}
	
	@Override
	public OrderProduct getOrderById(int id){
		return orderProcessDao.getOrderById(id);
	}
	
	@Override
	public String getLatestId(){
		return orderProcessDao.getLatestId();
	}
}
