package com.msa.varda.product;

import java.util.Arrays;

import org.springframework.beans.factory.annotation.Value;

public class ProductVO {
	private String pdId; 
	private String pdName; 
	private byte[] pdImg; 
	private byte[] pdSubImg; 
	private int pdPrice; 
	private String pdTag;
	private String pdDescrip;
	private int gender;
	private int skinType;
	private int pdType;
	
	
	public ProductVO() {
		super();
	}


	public ProductVO(String pdId, String pdName, byte[] pdImg, byte[] pdSubImg, int pdPrice, String pdTag,
			String pdDescrip, int gender, int skinType, int pdType) {
		super();
		this.pdId = pdId;
		this.pdName = pdName;
		this.pdImg = pdImg;
		this.pdSubImg = pdSubImg;
		this.pdPrice = pdPrice;
		this.pdTag = pdTag;
		this.pdDescrip = pdDescrip;
		this.gender = gender;
		this.skinType = skinType;
		this.pdType = pdType;
	}


	public String getPdId() {
		return pdId;
	}


	public void setPdId(String pdId) {
		this.pdId = pdId;
	}


	public String getPdName() {
		return pdName;
	}


	public void setPdName(String pdName) {
		this.pdName = pdName;
	}


	public byte[] getPdImg() {
		return pdImg;
	}


	public void setPdImg(byte[] pdImg) {
		this.pdImg = pdImg;
	}


	public byte[] getPdSubImg() {
		return pdSubImg;
	}


	public void setPdSubImg(byte[] pdSubImg) {
		this.pdSubImg = pdSubImg;
	}


	public int getPdPrice() {
		return pdPrice;
	}


	public void setPdPrice(int pdPrice) {
		this.pdPrice = pdPrice;
	}


	public String getPdTag() {
		return pdTag;
	}


	public void setPdTag(String pdTag) {
		this.pdTag = pdTag;
	}


	public String getPdDescrip() {
		return pdDescrip;
	}


	public void setPdDescrip(String pdDescrip) {
		this.pdDescrip = pdDescrip;
	}


	public int getGender() {
		return gender;
	}


	public void setGender(int gender) {
		this.gender = gender;
	}


	public int getSkinType() {
		return skinType;
	}


	public void setSkinType(int skinType) {
		this.skinType = skinType;
	}


	public int getPdType() {
		return pdType;
	}


	public void setPdType(int pdType) {
		this.pdType = pdType;
	}


	@Override
	public String toString() {
		return "ProductVO [pdId=" + pdId + ", pdName=" + pdName + ", pdImg=" + Arrays.toString(pdImg) + ", pdSubImg="
				+ Arrays.toString(pdSubImg) + ", pdPrice=" + pdPrice + ", pdTag=" + pdTag + ", pdDescrip=" + pdDescrip
				+ ", gender=" + gender + ", skinType=" + skinType + ", pdType=" + pdType + "]";
	}
	
	

	
}
