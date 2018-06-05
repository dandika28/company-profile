package com.mikatama.cp.dao;

import java.util.List;

import com.mikatama.cp.bean.OurCommitment;

public interface OurCommitmentDao {

	public List<OurCommitment> getContentCommitment();

	public OurCommitment getContentCommitmentById(int id);

	public void updateContentCommitment(OurCommitment commitment);

	public void deleteContentCommitmentById(int id);

	public String getLatestId();

	public void insertContentCommitment(OurCommitment commitment);

}
