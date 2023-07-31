package com.msa.varda.customer;

public class CustomerVO {
	
	private String cId;
	private String cName;
	private String cPwd;
	private String cPhone1;
	private String cPhone2;
	private String cPhone3;
	private String cEmail1;
	private String cEmail2;
	private String postcode;
	private String address;
	private String detailAdd;
	private String extraAdd;
	
	
	public CustomerVO() {
		super();
	}


	public CustomerVO(String cId, String cName, String cPwd, String cPhone1, String cPhone2, String cPhone3,
			String cEmail1, String cEmail2, String postcode, String address, String detailAdd, String extraAdd) {
		super();
		this.cId = cId;
		this.cName = cName;
		this.cPwd = cPwd;
		this.cPhone1 = cPhone1;
		this.cPhone2 = cPhone2;
		this.cPhone3 = cPhone3;
		this.cEmail1 = cEmail1;
		this.cEmail2 = cEmail2;
		this.postcode = postcode;
		this.address = address;
		this.detailAdd = detailAdd;
		this.extraAdd = extraAdd;
	}


	public String getcId() {
		return cId;
	}


	public void setcId(String cId) {
		this.cId = cId;
	}


	public String getcName() {
		return cName;
	}


	public void setcName(String cName) {
		this.cName = cName;
	}


	public String getcPwd() {
		return cPwd;
	}


	public void setcPwd(String cPwd) {
		this.cPwd = cPwd;
	}


	public String getcPhone1() {
		return cPhone1;
	}


	public void setcPhone1(String cPhone1) {
		this.cPhone1 = cPhone1;
	}


	public String getcPhone2() {
		return cPhone2;
	}


	public void setcPhone2(String cPhone2) {
		this.cPhone2 = cPhone2;
	}


	public String getcPhone3() {
		return cPhone3;
	}


	public void setcPhone3(String cPhone3) {
		this.cPhone3 = cPhone3;
	}


	public String getcEmail1() {
		return cEmail1;
	}


	public void setcEmail1(String cEmail1) {
		this.cEmail1 = cEmail1;
	}


	public String getcEmail2() {
		return cEmail2;
	}


	public void setcEmail2(String cEmail2) {
		this.cEmail2 = cEmail2;
	}


	public String getPostcode() {
		return postcode;
	}


	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getDetailAdd() {
		return detailAdd;
	}


	public void setDetailAdd(String detailAdd) {
		this.detailAdd = detailAdd;
	}


	public String getExtraAdd() {
		return extraAdd;
	}


	public void setExtraAdd(String extraAdd) {
		this.extraAdd = extraAdd;
	}


	@Override
	public String toString() {
		return "CustomerVO [cId=" + cId + ", cName=" + cName + ", cPwd=" + cPwd + ", cPhone1=" + cPhone1 + ", cPhone2="
				+ cPhone2 + ", cPhone3=" + cPhone3 + ", cEmail1=" + cEmail1 + ", cEmail2=" + cEmail2 + ", postcode="
				+ postcode + ", address=" + address + ", detailAdd=" + detailAdd + ", extraAdd=" + extraAdd + "]";
	}

	
}