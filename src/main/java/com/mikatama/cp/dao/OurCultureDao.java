package com.mikatama.cp.dao;

import java.util.List;

import com.mikatama.cp.bean.OurCulture;

public interface OurCultureDao {

	public List<OurCulture> getContentCulture();

	public OurCulture getContentCultureById(int id);

	public void updateImageContentCultureById(int id, String imageName);

	public void updateContentCulture(OurCulture culture);

	public void deleteContentCultureById(int id);

	public void insertContent(OurCulture culture);

	public String getLatestId();

}
