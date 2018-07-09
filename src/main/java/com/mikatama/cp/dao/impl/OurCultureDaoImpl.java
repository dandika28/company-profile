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

import com.mikatama.cp.bean.OurCulture;
import com.mikatama.cp.dao.OurCultureDao;

@Repository
public class OurCultureDaoImpl implements OurCultureDao {
	
	Logger logger = LoggerFactory.getLogger(OurCultureDaoImpl.class);
	
	DataSource dataSource;
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	String sqlGetContentCulture = "SELECT * FROM content_culture order by id";
	String sqlGetContentCultureById = "SELECT * FROM content_culture where id=?";
	String sqlUpdateImageContentCultureById = "UPDATE content_culture SET image=? WHERE id=?";
	String sqlUpdateContentCulture = "UPDATE content_culture SET title=?, content=? WHERE id=?";
	String sqlDeleteContentCultureById = "DELETE FROM content_culture WHERE id=?";
	String sqlInsertContentCulture = "INSERT INTO content_culture VALUES (?,?,?,?)";
	String sqlGetLatestId = "SELECT MAX(id) FROM content_culture";
	
	public void setDataSource(DataSource dataSource){
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public String getLatestId(){
		String id = jdbcTemplate.queryForObject(sqlGetLatestId, String.class);
		return id;
	}
	
	@Override
	public void insertContent(OurCulture culture){
		jdbcTemplate.update(sqlInsertContentCulture, new Object[] {culture.getId(), culture.getTitle(),
				culture.getContent(), culture.getImage()});
	}
	
	@Override
	public List<OurCulture> getContentCulture(){
		List<OurCulture> contentCultures = null;
		contentCultures = jdbcTemplate.query(sqlGetContentCulture, new OurCultureRowMapper());
		return contentCultures;
	}
	
	@Override
	public OurCulture getContentCultureById(int id){
		List<OurCulture> contentCultures = null;
		contentCultures = jdbcTemplate.query(sqlGetContentCultureById, new Object[] {id}, new OurCultureRowMapper());
		if(contentCultures.size() > 0)
			return contentCultures.get(0);
		else
			return null;
	}
	
	@Override
	public void updateImageContentCultureById(int id, String imageName){
		jdbcTemplate.update(sqlUpdateImageContentCultureById, new Object[] {imageName, id});
	}
	
	@Override
	public void updateContentCulture(OurCulture culture){
		jdbcTemplate.update(sqlUpdateContentCulture, new Object[] {culture.getTitle(), culture.getContent(), culture.getId()});
	}
	
	@Override
	public void deleteContentCultureById(int id){
		jdbcTemplate.update(sqlDeleteContentCultureById, new Object[] {id});
	}

}

class OurCultureRowMapper implements RowMapper<OurCulture>{
	
	@Override
	public OurCulture mapRow(ResultSet rs, int rowNum) throws SQLException{
		OurCulture culture = new OurCulture();
		culture.setId(rs.getInt("id"));
		culture.setTitle(rs.getString("title"));
		culture.setContent(rs.getString("content"));
		culture.setImage(rs.getString("image"));
		
		return culture;
	}
}
