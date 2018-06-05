package com.mikatama.cp.service.impl;

import com.mikatama.cp.bean.OurCommitment;
import com.mikatama.cp.dao.OurCommitmentDao;
import com.mikatama.cp.service.OurCommitmentService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OurCommitmentServiceImpl implements OurCommitmentService {
	
	@Autowired
	OurCommitmentDao ourCommitmentDao;
	
	@Override
	public List<OurCommitment> getCommitmentContent(){
		return ourCommitmentDao.getContentCommitment();
	}
	
	@Override
	public boolean insertContentCommitment(OurCommitment commitment){
		boolean success = false;
		try {
			ourCommitmentDao.insertContentCommitment(commitment);
			success = true;
		} catch (Exception e) {
			e.printStackTrace();
			success = false;
		}
		return success;
	}
	
	@Override
	public String getLatestId(){
		return ourCommitmentDao.getLatestId();
	}
	
	@Override
	public OurCommitment getCommitmentContentById(int id){
		return ourCommitmentDao.getContentCommitmentById(id);
	}
	
    @Override
    public void updateContentCommitment(OurCommitment commitment){
    	ourCommitmentDao.updateContentCommitment(commitment);
    }
    
    @Override
    public void deleteContentCommitmentById(int id){
    	ourCommitmentDao.deleteContentCommitmentById(id);
    }
}
