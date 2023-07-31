package com.msa.varda.review;

import java.sql.Timestamp;

public class ReviewVO {
	
	private String pdId;
	private String cId;
	private String applyScore;
	private String stimulationScore;
	private String satisfactionScore;
	private String content;
	private Timestamp writeDate;
	
	public ReviewVO() {
		super();
	}

	public ReviewVO(String pdId, String cId, String applyScore, String stimulationScore, String satisfactionScore,
			String content, Timestamp writeDate) {
		super();
		this.pdId = pdId;
		this.cId = cId;
		this.applyScore = applyScore;
		this.stimulationScore = stimulationScore;
		this.satisfactionScore = satisfactionScore;
		this.content = content;
		this.writeDate = writeDate;
	}

	public String getPdId() {
		return pdId;
	}

	public void setPdId(String pdId) {
		this.pdId = pdId;
	}

	public String getcId() {
		return cId;
	}

	public void setcId(String cId) {
		this.cId = cId;
	}

	public String getApplyScore() {
		return applyScore;
	}

	public void setApplyScore(String applyScore) {
		this.applyScore = applyScore;
	}

	public String getStimulationScore() {
		return stimulationScore;
	}

	public void setStimulationScore(String stimulationScore) {
		this.stimulationScore = stimulationScore;
	}

	public String getSatisfactionScore() {
		return satisfactionScore;
	}

	public void setSatisfactionScore(String satisfactionScore) {
		this.satisfactionScore = satisfactionScore;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Timestamp getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(Timestamp writeDate) {
		this.writeDate = writeDate;
	}

	@Override
	public String toString() {
		return "ReviewVO [pdId=" + pdId + ", cId=" + cId + ", applyScore=" + applyScore + ", stimulationScore="
				+ stimulationScore + ", satisfactionScore=" + satisfactionScore + ", content=" + content
				+ ", writeDate=" + writeDate + "]";
	}
	
	
	

}
