package com.mikatama.cp.service;

import com.mikatama.cp.bean.OurCommitment;

import java.util.List;

public interface OurCommitmentService {
	public List<OurCommitment> getCommitmentContent();

	public OurCommitment getCommitmentContentById(int id);

	public void updateContentCommitment(OurCommitment commitment);

	public void deleteContentCommitmentById(int id);

	public String getLatestId();

	public boolean insertContentCommitment(OurCommitment commitment);
	
	
}
