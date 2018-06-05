package com.mikatama.cp.dao;

import java.util.List;

import com.mikatama.cp.bean.ContentHowWork;

public interface ContentHowWorkDao {

	public List<ContentHowWork> getContentHowWork();

	public ContentHowWork getContentHowWorkById(int id);

	public void updateContentHowWork(ContentHowWork content);

	public void deleteContentHowWorkById(int id);

	public void insertContentHowWork(ContentHowWork content);

	public String getContentHowWorkLatestId();

}
