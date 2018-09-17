package com.mikatama.cp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mikatama.cp.bean.ContentHomepage;
import com.mikatama.cp.bean.ContentImageHomepage;
import com.mikatama.cp.dao.ContentHomepageDao;
import com.mikatama.cp.service.ContentHomepageService;

@Service
public class ContentHomepageServiceImpl implements ContentHomepageService{
	
	@Autowired
	private ContentHomepageDao contentHomepageDao;
	
	@Override
	public List<ContentHomepage> getListContentHomepage(){
		return contentHomepageDao.getListContentHomepage();
	}
	
	@Override
	public void updateContentHomepage(ContentHomepage contentHompage){
		contentHomepageDao.updateContentHomepage(contentHompage);
	}
	
	@Override
	public void deleteContentHomepage(int id){
		contentHomepageDao.deleteContentHomepage(id);
	}
	
	@Override
	public ContentHomepage getContentHomepageById(int id){
		return contentHomepageDao.getContentHomepageById(id);
	}
	
	@Override
	public void updateContentImageHomepage(ContentImageHomepage contentImageHomepage){
		contentHomepageDao.updateContentImageHomepage(contentImageHomepage);
	}
	
	@Override
	public String getTitleContentHomepage(){
		return contentHomepageDao.getTitleContentHomepage();
	}
	
	@Override
	public ContentImageHomepage getContentImageHomepage(){
		return contentHomepageDao.getContentImageHomepage();
	}
	
	@Override
	public String getSubtitleContentHomepage(){
		return contentHomepageDao.getSubtitleContentHomepage();
	}
	
	@Override
	public int getButtonHomepageValue(){
		return contentHomepageDao.getButtonContentHomepageValue();
	}

}
