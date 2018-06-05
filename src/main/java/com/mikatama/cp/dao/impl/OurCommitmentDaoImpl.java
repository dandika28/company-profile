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

import com.mikatama.cp.bean.OurCommitment;
import com.mikatama.cp.dao.OurCommitmentDao;

@Repository
public class OurCommitmentDaoImpl implements OurCommitmentDao {

	Logger logger = LoggerFactory.getLogger(OurCommitmentDaoImpl.class);
	
	DataSource dataSource;
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	String sqlGetContentCommitment = "SELECT * FROM content_commitment order by id";
	String sqlUpdateContentCommitment = "UPDATE content_commitment SET title=?, content=?, style=? WHERE id=?";
	String sqlGetContentCommitmentById = "SELECT * FROM content_commitment WHERE id=?";
	String sqlDeleteContentCommitmentById = "DELETE FROM content_commitment WHERE id=";
	String sqlGetLatestId = "SELECT MAX(id) FROM content_commitment";
	String sqlInsertContentCommitment = "INSERT INTO content_commitment VALUES (?,?,?,?)";
	
	public void setDataSource(DataSource dataSource){
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public void insertContentCommitment(OurCommitment commitment){
		jdbcTemplate.update(sqlInsertContentCommitment, new Object[] {commitment.getId(),
				commitment.getTitle(), commitment.getContent(), commitment.getStyle()});
	}
	
	@Override
	public List<OurCommitment> getContentCommitment(){
		List<OurCommitment> contentCommitments = null;
		contentCommitments = jdbcTemplate.query(sqlGetContentCommitment, new OurCommitmentRowMapper());
		return contentCommitments;
	}
	
	@Override
	public String getLatestId(){
		String id = jdbcTemplate.queryForObject(sqlGetLatestId, String.class);
		return id;
	}
	
	@Override
	public OurCommitment getContentCommitmentById(int id){
		List<OurCommitment> commitments = null;
		commitments = jdbcTemplate.query(sqlGetContentCommitmentById, new Object[] {id}, new OurCommitmentRowMapper());
		if(commitments.size() > 0)
			return commitments.get(0);
		else
			return null;
	}
	
	@Override
	public void updateContentCommitment(OurCommitment commitment){
		jdbcTemplate.update(sqlUpdateContentCommitment, new Object[] {commitment.getTitle(),
				commitment.getContent(), commitment.getStyle(), commitment.getId()});
	}
	
	@Override
	public void deleteContentCommitmentById(int id){
		sqlDeleteContentCommitmentById = sqlDeleteContentCommitmentById + String.valueOf(id);
		jdbcTemplate.execute(sqlDeleteContentCommitmentById);
	}
}

class OurCommitmentRowMapper implements RowMapper<OurCommitment>{
	
	@Override
	public OurCommitment mapRow(ResultSet rs, int rowNum) throws SQLException{
		OurCommitment commitment = new OurCommitment();
		commitment.setId(rs.getInt("id"));
		commitment.setTitle(rs.getString("title"));
		commitment.setContent(rs.getString("content"));
		commitment.setStyle(rs.getString("style"));
		
		return commitment;
	}
}
