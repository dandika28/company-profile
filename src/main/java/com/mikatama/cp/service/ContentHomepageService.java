package com.mikatama.cp.service;

import java.util.List;

import com.mikatama.cp.bean.ContentHomepage;
import com.mikatama.cp.bean.ContentImageHomepage;

public interface ContentHomepageService {

	public List<ContentHomepage> getListContentHomepage();

	public void updateContentHomepage(ContentHomepage contentHompage);

	public void deleteContentHomepage(int id);

	public ContentHomepage getContentHomepageById(int id);

	public String getTitleContentHomepage();

	public String getSubtitleContentHomepage();

	public int getButtonHomepageValue();

	public ContentImageHomepage getContentImageHomepage();

	public void updateContentImageHomepage(ContentImageHomepage contentImageHomepage);

}
