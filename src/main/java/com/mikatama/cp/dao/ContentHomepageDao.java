package com.mikatama.cp.dao;

import java.util.List;

import com.mikatama.cp.bean.ContentHomepage;
import com.mikatama.cp.bean.ContentImageHomepage;

public interface ContentHomepageDao {

	public List<ContentHomepage> getListContentHomepage();

	public void updateContentHomepage(ContentHomepage contentHompage);

	public void deleteContentHomepage(int id);

	public ContentHomepage getContentHomepageById(int id);

	public String getTitleContentHomepage();

	public String getSubtitleContentHomepage();

	public int getButtonContentHomepageValue();

	public ContentImageHomepage getContentImageHomepage();

	public void updateContentImageHomepage(ContentImageHomepage homepage);

}
