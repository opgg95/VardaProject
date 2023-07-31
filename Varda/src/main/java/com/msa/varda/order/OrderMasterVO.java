package com.msa.varda.order;
 
import java.util.Date;

public class OrderMasterVO {
	private int odNum;
	private String cId;
	private int odSum;
	private Date odDate;
	private String odAdd;
	private String odPhone;
	
	
	public OrderMasterVO() {
		super();
	}


	public OrderMasterVO(int odNum, String cId, int odSum, Date odDate, String odAdd, String odPhone) {
		super();
		this.odNum = odNum;
		this.cId = cId;
		this.odSum = odSum;
		this.odDate = odDate;
		this.odAdd = odAdd;
		this.odPhone = odPhone;
	}


	public int getOdNum() {
		return odNum;
	}


	public void setOdNum(int odNum) {
		this.odNum = odNum;
	}


	public String getcId() {
		return cId;
	}


	public void setcId(String cId) {
		this.cId = cId;
	}


	public int getOdSum() {
		return odSum;
	}


	public void setOdSum(int odSum) {
		this.odSum = odSum;
	}


	public Date getOdDate() {
		return odDate;
	}


	public void setOdDate(Date odDate) {
		this.odDate = odDate;
	}


	public String getOdAdd() {
		return odAdd;
	}


	public void setOdAdd(String odAdd) {
		this.odAdd = odAdd;
	}


	public String getOdPhone() {
		return odPhone;
	}


	public void setOdPhone(String odPhone) {
		this.odPhone = odPhone;
	}


	@Override
	public String toString() {
		return "OrderMasterVO [odNum=" + odNum + ", cId=" + cId + ", odSum=" + odSum + ", odDate=" + odDate + ", odAdd="
				+ odAdd + ", odPhone=" + odPhone + "]";
	}
	
}
