package com.msa.varda.order;

public class OrderDetailVO {
	
	private int odNum;
	private int odOrder;
	private String pdId;
	private int odPrice;
	
	
	public OrderDetailVO() {
		super();
	}


	public OrderDetailVO(int odNum, int odOrder, String pdId, int odPrice) {
		super();
		this.odNum = odNum;
		this.odOrder = odOrder;
		this.pdId = pdId;
		this.odPrice = odPrice;
	}


	public int getOdNum() {
		return odNum;
	}


	public void setOdNum(int i) {
		this.odNum = i;
	}


	public int getOdOrder() {
		return odOrder;
	}


	public void setOdOrder(int i) {
		this.odOrder = i;
	}


	public String getPdId() {
		return pdId;
	}


	public void setPdId(String pdId) {
		this.pdId = pdId;
	}


	public int getOdPrice() {
		return odPrice;
	}


	public void setOdPrice(int odPrice) {
		this.odPrice = odPrice;
	}


	@Override
	public String toString() {
		return "OrderDetailVO [odNum=" + odNum + ", odOrder=" + odOrder + ", pdId=" + pdId + ", odPrice=" + odPrice
				+ "]";
	}
	
	
	
	
	

}
