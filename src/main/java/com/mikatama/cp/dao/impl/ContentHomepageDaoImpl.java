package com.mikatama.cp.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.mikatama.cp.bean.ContentHomepage;
import com.mikatama.cp.bean.ContentImageHomepage;
import com.mikatama.cp.dao.ContentHomepageDao;

@Repository
public class ContentHomepageDaoImpl implements ContentHomepageDao{

	Logger logger = LoggerFactory.getLogger(ContentHomepageDaoImpl.class);
	
	DataSource dataSource;
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	String sqlGetContentHomepage = "SELECT * FROM content_homepage order by id";
	String sqlUpdateContentHomepage = "UPDATE content_homepage SET title=?, content=? WHERE id=?";
	String sqlDeleteContentHomepage = "DELETE FROM content_homepage where id=?";
	String sqlGetContentHomepageById = "SELECT * FROM content_homepage WHERE id=?";
	String sqlGetTitleContentImageHomepage = "SELECT title FROM content_image_homepage";
	String sqlGetSubtitleContentImageHomepage = "SELECT subtitle FROM content_image_homepage";
	String sqlGetValueForShowingButtonImageHomepage = "SELECT button FROM content_image_homepage";
	String sqlGetContentImageHomepage = "SELECT * FROM content_image_homepage";
	String sqlUpdateContentImageHomepage = "UPDATE content_image_homepage SET title=?, subtitle=?, button=? WHERE id=1";
	
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	@Override
	public List<ContentHomepage> getListContentHomepage(){
		List<ContentHomepage> contentHompages = null;
		contentHompages = jdbcTemplate.query(sqlGetContentHomepage, new ContentHomepageRowMapper());
		return contentHompages;
	}
	
	@Override
	public ContentImageHomepage getContentImageHomepage(){
		List<ContentImageHomepage> contentImageHomepage = null;
		contentImageHomepage = jdbcTemplate.query(sqlGetContentImageHomepage, new ContentImageHomepageRowMapper());
		return contentImageHomepage.get(0);
	}
	
	@Override
	public void updateContentImageHomepage(ContentImageHomepage homepage){
		jdbcTemplate.update(sqlUpdateContentImageHomepage, new Object[] {homepage.getTitle(), 
				homepage.getSubtitle(), homepage.getButton()});
	}
	
	@Override
	public String getTitleContentHomepage(){
		String title = jdbcTemplate.queryForObject(sqlGetTitleContentImageHomepage, String.class);
		return title;
	}
	
	@Override
	public int getButtonContentHomepageValue(){
		int value = jdbcTemplate.queryForObject(sqlGetValueForShowingButtonImageHomepage, Integer.class);
		return value;
	}
	
	@Override
	public String getSubtitleContentHomepage(){
		String subtitle = jdbcTemplate.queryForObject(sqlGetSubtitleContentImageHomepage, String.class);
		return subtitle;
	}
	
	@Override
	public void updateContentHomepage(ContentHomepage contentHompage){
		jdbcTemplate.update(sqlUpdateContentHomepage, new Object[] {contentHompage.getTitle(),
				contentHompage.getContent(), contentHompage.getId()});
	}
	
	@Override
	public void deleteContentHomepage(int id){
		jdbcTemplate.update(sqlDeleteContentHomepage, new Object[]{id});
	}
	
	@Override
	public ContentHomepage getContentHomepageById(int id){
		List<ContentHomepage> contentHompages = null;
		contentHompages = jdbcTemplate.query(sqlGetContentHomepageById, new Object[] {id}, new ContentHomepageRowMapper());
		if(contentHompages.size()>0)
			return contentHompages.get(0);
		else
			return null;
	}
}

class ContentHomepageRowMapper implements RowMapper<ContentHomepage>{
	
	@Override
	public ContentHomepage mapRow(ResultSet rs, int rowNum) throws SQLException{
		ContentHomepage contentHompage = new ContentHomepage();
		contentHompage.setId(rs.getInt("id"));
		contentHompage.setTitle(rs.getString("title"));
		contentHompage.setContent(rs.getString("content"));
		return contentHompage;
	}
}

class ContentImageHomepageRowMapper implements RowMapper<ContentImageHomepage>{
	
	@Override
	public ContentImageHomepage mapRow(ResultSet rs, int rowNum) throws SQLException{
		ContentImageHomepage contentImageHomepage = new ContentImageHomepage();
		contentImageHomepage.setTitle(rs.getString("title"));
		contentImageHomepage.setSubtitle(rs.getString("subtitle"));
		contentImageHomepage.setButton(rs.getString("button"));
		return contentImageHomepage;
	}
}
