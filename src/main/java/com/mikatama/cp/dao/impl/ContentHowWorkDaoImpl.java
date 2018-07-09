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

import com.mikatama.cp.bean.ContentHowWork;
import com.mikatama.cp.dao.ContentHowWorkDao;

@Repository
public class ContentHowWorkDaoImpl implements ContentHowWorkDao {
	
	Logger logger = LoggerFactory.getLogger(ContentHowWorkDaoImpl.class);
	
	DataSource dataSource;
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	String sqlGetContentHowWork = "SELECT * FROM content_howtowork order by id";
	String sqlInsertContentHowWork = "INSERT INTO content_howtowork VALUES (?,?,?,?,?,?)";
	String sqlGetContentHowWorkById = "SELECT * FROM content_howtowork where id=?";
	String sqlUpdateContentHowWorkById = "UPDATE content_howtowork SET title=?, content=?, icon=?, icon_color=?, process=? WHERE id=?";
	String sqlDeleteContentById = "DELETE FROM content_howtowork WHERE id=?";
	String sqlGetLatestId = "SELECT MAX(id) FROM content_howtowork";
	
	public void setDataSource(DataSource dataSource){
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public String getContentHowWorkLatestId(){
		String id = jdbcTemplate.queryForObject(sqlGetLatestId, String.class);
		return id;
	}
	
	@Override
	public List<ContentHowWork> getContentHowWork(){
		List<ContentHowWork> list = null;
		list = jdbcTemplate.query(sqlGetContentHowWork, new HowWorkRowMapper());
		return list;
	}
	
	
	@Override
	public ContentHowWork getContentHowWorkById(int id){
		List<ContentHowWork> list = null;
		list = jdbcTemplate.query(sqlGetContentHowWorkById, new Object[] {id}, new HowWorkRowMapper());
		
		if(list.size()>0)
			return list.get(0);
		else
			return null;
	}
	
	@Override
	public void updateContentHowWork(ContentHowWork content){
		jdbcTemplate.update(sqlUpdateContentHowWorkById, new Object[] {content.getTitle(), content.getContent(),
				content.getIcon(), content.getIconColor(), content.getProcess(), content.getId()});
	}
	
	@Override
	public void deleteContentHowWorkById(int id){
		jdbcTemplate.update(sqlDeleteContentById, new Object[] {id});
	}
	
	@Override
	public void insertContentHowWork(ContentHowWork content){
		jdbcTemplate.update(sqlInsertContentHowWork, new Object[] {content.getId(), 
				content.getTitle(), content.getContent(), content.getIcon(), content.getIconColor(),
				content.getProcess()});
	}

}

class HowWorkRowMapper implements RowMapper<ContentHowWork>{
	
	@Override
	public ContentHowWork mapRow(ResultSet rs, int rowNum) throws SQLException{
		ContentHowWork contentHowWork = new ContentHowWork();
		contentHowWork.setId(rs.getInt("id"));
		contentHowWork.setTitle(rs.getString("title"));
		contentHowWork.setContent(rs.getString("content"));
		contentHowWork.setIcon(rs.getString("icon"));
		contentHowWork.setIconColor(rs.getString("icon_color"));
		contentHowWork.setProcess(rs.getString("process"));
		return contentHowWork;
	}
}
