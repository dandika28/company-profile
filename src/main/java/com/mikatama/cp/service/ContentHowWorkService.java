package com.mikatama.cp.service;

import java.util.List;

import com.mikatama.cp.bean.ContentHowWork;

public interface ContentHowWorkService {

	public void updateContentHowWork(ContentHowWork contentHowWork);

	public boolean insertContentHowWork(ContentHowWork contentHowWork);

	public ContentHowWork getContentHowWorkById(int id);

	public List<ContentHowWork> getContentHowWork();

	public void deleteContentHowWorkById(int id);

	public List<ContentHowWork> getContentHowWorkOriginal();

	public String getContentHowWorkLatestId();

}
