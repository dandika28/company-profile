package com.mikatama.cp.service;

import java.util.List;

import com.mikatama.cp.bean.ContentHomepage;

public interface ContentHomepageService {

	public List<ContentHomepage> getListContentHomepage();

	public void updateContentHomepage(ContentHomepage contentHompage);

	public void deleteContentHomepage(int id);

	public ContentHomepage getContentHomepageById(int id);

}
