package com.mikatama.cp.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mikatama.cp.bean.ContentHowWork;
import com.mikatama.cp.bean.OurCommitment;
import com.mikatama.cp.dao.ContentHowWorkDao;
import com.mikatama.cp.service.ContentHowWorkService;

@Service
public class ContentHowWorkServiceImpl implements ContentHowWorkService{

	@Autowired
	ContentHowWorkDao contentHowWorkDao;
	
	@Override
	public List<ContentHowWork> getContentHowWorkOriginal(){
		return contentHowWorkDao.getContentHowWork();
	}
	
	@Override
	public List<ContentHowWork> getContentHowWork(){
		List<ContentHowWork> contentHowWorks = contentHowWorkDao.getContentHowWork();
		int contentHowWorkSize=0;
		for(int a=0;a<contentHowWorks.size();a++){
			if(a==0){
				contentHowWorkSize=1;
			}else{
				if(!contentHowWorks.get(a).getProcess().equals(contentHowWorks.get(a-1).getProcess())){
					contentHowWorkSize=contentHowWorkSize+1;
				}else{
					contentHowWorkSize=contentHowWorkSize+1;
				}
			}
		}
		
		List<ContentHowWork> contentTemp = new ArrayList<ContentHowWork>();
		int j=0;
		for(int i=0;i<contentHowWorkSize;i++){
			if(i==0){
				contentTemp.add(j,contentHowWorks.get(i));
			}else{
				if(i>=contentHowWorks.size()){
					contentTemp.add(j,contentHowWorks.get(i-1));
				}else{
					if(!contentHowWorks.get(i).getProcess().equals(contentHowWorks.get(i-1).getProcess())){
						contentTemp.add(j,contentHowWorks.get(i));
					}else{
						contentTemp.add(j,null);
						contentTemp.add(j+1, contentHowWorks.get(i));
						j++;
					}
				}
			}
			j++;
		}
		
		return contentTemp;
	}
	
	@Override
	public String getContentHowWorkLatestId(){
		return contentHowWorkDao.getContentHowWorkLatestId();
	}
	
	@Override
	public ContentHowWork getContentHowWorkById(int id){
		return contentHowWorkDao.getContentHowWorkById(id);
	}
	
	@Override
	public boolean insertContentHowWork(ContentHowWork contentHowWork){
		boolean success = false;
		try {
			contentHowWorkDao.insertContentHowWork(contentHowWork);
			success=true;
		} catch (Exception e) {
			e.printStackTrace();
			success=false;
		}
		return success;
	}
	
	@Override
	public void updateContentHowWork(ContentHowWork contentHowWork){
		contentHowWorkDao.updateContentHowWork(contentHowWork);
	}
	
	@Override
	public void deleteContentHowWorkById(int id){
		contentHowWorkDao.deleteContentHowWorkById(id);
	}
}
