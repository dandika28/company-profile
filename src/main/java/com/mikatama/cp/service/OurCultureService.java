package com.mikatama.cp.service;

import com.mikatama.cp.bean.OurCulture;

import java.util.List;

public interface OurCultureService {


	public List<OurCulture> getContentCulture();

	public OurCulture getContentCultureById(int id);

	public void updateImageContentCultureById(int id, String imageName);

	public void updateContentCulture(OurCulture culture);

	public void deleteContentCultureById(int id);

	public boolean insertContentCulture(OurCulture culture);

	public String getLatestId();
}
