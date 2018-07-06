package com.mikatama.cp.dao;

import java.util.List;

import com.mikatama.cp.bean.ContentHomepage;

public interface ContentHomepageDao {

	public List<ContentHomepage> getListContentHomepage();

	public void updateContentHomepage(ContentHomepage contentHompage);

	public void deleteContentHomepage(int id);

	public ContentHomepage getContentHomepageById(int id);

}
